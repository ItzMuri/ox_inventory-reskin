import React, { useRef } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { useIntersection } from '../../hooks/useIntersection';

const InventoryGrid: React.FC<{ inventory: Inventory, direction: 'left' | 'right' }> = ({ inventory, direction }) => {
  const weight = React.useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const isPlayerInventory = inventory.type === 'player';
  const [page, setPage] = React.useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  React.useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);

  const getIconOrImage = () => {
    if (inventory.maxWeight == 96000 && inventory.type !== 'otherplayer' && inventory.type !== 'drop') {
    }
    switch (inventory.type) {
      case'player':
      return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/player.png" alt="Player Icon" />;
      case 'newdrop':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/drop.png" alt="New Drop" />;
      case 'drop':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/drop.png" alt="Drop" />;
      case 'container':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/stash.png" alt="Container" />;
      case 'crafting':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/craft.png" alt="Crafting" />;
      case 'stash':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/stash.png" alt="Stash" />;
      case 'inspect':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/search.png" alt="Inspect" />;
      case 'otherplayer':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/other.png" alt="Other Player" />;
      case 'shop':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/shoping.png" alt="Shop" />;
      case 'trunk':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/tunk.png" alt="Trunk" />;
      case 'glovebox':
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/player.png" alt="Trunk" />;
      default:
        return <img className="inventory-icon" src="https://r2.fivemanage.com/jHnZDVypFkxPQN2ObCfMu/images/player.png" alt="Trunk" />;
    }
  };
  
  return (
    <>
      <div className="inventory-grid-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div>
          <div className="inventory-grid-header-wrapper">
          {getIconOrImage()}
            <p>{inventory.label}</p>
            {inventory.maxWeight && (
              <p>
                {weight / 1000}/{inventory.maxWeight / 1000}kg
              </p>
            )}
          </div>
          <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
        </div>
        <div className={direction === 'left' ? 'inventory-grid-container-left' : 'inventory-grid-container-right'} ref={containerRef}>
          <>
            {inventory.items.map((item, index) => {
                if(index < 5 && inventory.type==='player') {
                  return ''
                }
                return <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
              />
            })}
          </>
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;
