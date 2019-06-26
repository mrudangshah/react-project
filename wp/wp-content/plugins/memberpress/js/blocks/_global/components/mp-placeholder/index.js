const { Placeholder } = wp.components;
import MemberPressIcon from "../mp-icon";

function MPPlaceholder({
  icon,
  label,
  instructions,
  children,
  iconClass = "mp-icon-placeholder"
}) {
  return (
    <Placeholder
      icon={icon}
      label={
        <div>
          <MemberPressIcon className={iconClass} />
          {label}
        </div>
      }
      instructions={instructions}
    >
      {children}
    </Placeholder>
  );
}

export default MPPlaceholder;
