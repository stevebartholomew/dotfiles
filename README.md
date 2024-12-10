### Install dependencies
```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
```

## Remap ~
```
hidutil property --set '{"UserKeyMapping": [{"HIDKeyboardModifierMappingSrc": 0x700000064, "HIDKeyboardModifierMappingDst": 0x700000035}, {"HIDKeyboardModifierMappingSrc": 0x700000035, "HIDKeyboardModifierMappingDst": 0x700000064}]}'
```

## VSCode key repeat
```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```
