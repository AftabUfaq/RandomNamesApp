import { ViewStyle, requireNativeComponent } from "react-native";

export interface TextSettingsViewProps {
    style: ViewStyle
}


export const TextSettingsView = requireNativeComponent('TextSettingsView') as unknown as React.FC<TextSettingsViewProps>