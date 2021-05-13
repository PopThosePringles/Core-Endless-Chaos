Name: "Misc"
RootId: 2391944682256423632
Objects {
  Id: 8100794659850421756
  Name: "Post Processing"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2391944682256423632
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Post Processing"
  }
}
Objects {
  Id: 8722671883047592148
  Name: "Sky"
  Transform {
    Location {
      Z: 700
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2391944682256423632
  ChildIds: 14884483191906004984
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  NetworkContext {
  }
}
Objects {
  Id: 14884483191906004984
  Name: "Sky Sci-fi 01"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8722671883047592148
  ChildIds: 10960213758888115736
  ChildIds: 1012724818138817245
  ChildIds: 3703155921290969731
  ChildIds: 16837106940141533249
  ChildIds: 2623518730287534235
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 2623518730287534235
  Name: "Nebula"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -178.445206
      Yaw: -1.71090698
      Roll: 0.450649261
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14884483191906004984
  UnregisteredParameters {
    Overrides {
      Name: "bp:Size"
      Vector {
        X: 20
        Y: 20
        Z: 20
      }
    }
    Overrides {
      Name: "bp:Nebula"
      Enum {
        Value: "mc:enebulae:5"
      }
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Hue Shift"
      Float: 0
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 2617361319805279588
    }
  }
}
Objects {
  Id: 16837106940141533249
  Name: "Star Dome"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14884483191906004984
  UnregisteredParameters {
    Overrides {
      Name: "bp:Star Brightness"
      Float: 2
    }
    Overrides {
      Name: "bp:Twinkle Mask Speed"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Twinkle Mask"
      Int: 0
    }
    Overrides {
      Name: "bp:Star Appearance"
      Int: 0
    }
    Overrides {
      Name: "bp:Star Tiling Density"
      Float: 6
    }
    Overrides {
      Name: "bp:Color Gradient"
      Enum {
        Value: "mc:ecolorgradients:11"
      }
    }
    Overrides {
      Name: "bp:Star Color Cycle"
      Float: 180
    }
    Overrides {
      Name: "bp:Real Stars"
      Bool: true
    }
    Overrides {
      Name: "bp:Star Visibility"
      Float: 0.574385464
    }
    Overrides {
      Name: "bp:Star Color Intensity"
      Float: 2
    }
    Overrides {
      Name: "bp:Space Tint"
      Color {
        A: 1
      }
    }
    Overrides {
      Name: "bp:Twinkle"
      Bool: false
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 12344193518355455075
    }
  }
}
Objects {
  Id: 3703155921290969731
  Name: "Skylight"
  Transform {
    Location {
      X: 250
      Y: 300
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14884483191906004984
  UnregisteredParameters {
    Overrides {
      Name: "bp:Index"
      Int: 12
    }
    Overrides {
      Name: "bp:Ambient Image"
      Enum {
        Value: "mc:eambientcubemapssmall:9"
      }
    }
    Overrides {
      Name: "bp:Blend Target Image"
      Enum {
        Value: "mc:eambientcubemapssmall:1"
      }
    }
    Overrides {
      Name: "bp:Blend Amount"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Tint Color"
      Color {
        R: 0.600165844
        G: 0.34375
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 2.06038976
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 11515840070784317904
    }
  }
}
Objects {
  Id: 1012724818138817245
  Name: "Sun Light"
  Transform {
    Location {
      X: -50
      Z: 300
    }
    Rotation {
      Pitch: -38.9736328
      Yaw: 8.81244946
      Roll: 11.689105
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14884483191906004984
  UnregisteredParameters {
    Overrides {
      Name: "bp:Intensity"
      Float: 1
    }
    Overrides {
      Name: "bp:Light Color"
      Color {
        R: 1
        G: 0.36
        B: 0.716026306
        A: 1
      }
    }
    Overrides {
      Name: "bp:Light Shaft Bloom"
      Bool: false
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Scale"
      Float: 2
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Threshold"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Tint"
      Color {
        R: 1
        G: 0.779602647
        B: 0.480000019
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Temperature"
      Bool: false
    }
    Overrides {
      Name: "bp:Sun Disc Color"
      Color {
        R: 50
        G: 1
        B: 2.00000095
        A: 1
      }
    }
    Overrides {
      Name: "bp:Size"
      Float: 3
    }
    Overrides {
      Name: "bp:Shape"
      Int: 0
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 16910278292812118833
    }
  }
}
Objects {
  Id: 10960213758888115736
  Name: "Sky Dome"
  Transform {
    Location {
      X: -200
      Y: -300
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14884483191906004984
  UnregisteredParameters {
    Overrides {
      Name: "bp:Cloud Shape"
      Int: 3
    }
    Overrides {
      Name: "bp:Horizon Color"
      Color {
        G: 0.0281456392
        B: 0.169999957
        A: 0.378000021
      }
    }
    Overrides {
      Name: "bp:Zenith Color"
      Color {
        R: 0.0188741647
        B: 0.0299999714
        A: 0.6
      }
    }
    Overrides {
      Name: "bp:Cloud Color"
      Color {
        R: 0.9
        G: 0.196688741
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Wisp Color"
      Color {
        R: 0.830000043
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Sun Color for Cloud Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Cloud Rim Brightness"
      Float: 4
    }
    Overrides {
      Name: "bp:Cloud Detail Brightness"
      Float: 2
    }
    Overrides {
      Name: "bp:Background Clouds"
      Bool: false
    }
    Overrides {
      Name: "bp:Cloud Opacity"
      Float: 0.1
    }
    Overrides {
      Name: "bp:Haze Color"
      Color {
        G: 0.120000005
        B: 0.103311256
        A: 0.708
      }
    }
    Overrides {
      Name: "bp:Cloud Ambient Color"
      Color {
        R: 0.53125
        B: 0.422185481
        A: 1
      }
    }
    Overrides {
      Name: "bp:Sky Influence On Clouds"
      Float: 5
    }
    Overrides {
      Name: "bp:High Cloud Color"
      Color {
        R: 1
        G: 0.29967767
        B: 0.565227509
        A: 1
      }
    }
    Overrides {
      Name: "bp:Brightness"
      Float: 1.2028712
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 7887238662729938253
    }
  }
}
Objects {
  Id: 12749046074602368423
  Name: "2D Camera Settings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2391944682256423632
  ChildIds: 4256572323051841107
  ChildIds: 7436210798300434319
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 3970933411577088114
    SubobjectId: 6230487291917958532
    InstanceId: 7751457978459141576
    TemplateId: 9979267166667265300
    WasRoot: true
  }
}
Objects {
  Id: 7436210798300434319
  Name: "Client Context"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12749046074602368423
  ChildIds: 2051787786251312450
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 17376732882704981926
    SubobjectId: 10397188341633673808
    InstanceId: 7751457978459141576
    TemplateId: 9979267166667265300
  }
}
Objects {
  Id: 2051787786251312450
  Name: "2D Camera"
  Transform {
    Location {
      Z: 800
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7436210798300434319
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Camera {
    UseAsDefault: true
    InitialDistance: 1500
    IsDistanceAdjustable: true
    MinDistance: 300
    MaxDistance: 3000
    PositionOffset {
    }
    RotationOffset {
      Pitch: -90
    }
    FieldOfView: 90
    ViewWidth: 4276.38379
    RotationMode {
      Value: "mc:erotationmode:fixed"
    }
    MinPitch: -89
    MaxPitch: 89
  }
  InstanceHistory {
    SelfId: 14602974712451957530
    SubobjectId: 12377164915522451180
    InstanceId: 7751457978459141576
    TemplateId: 9979267166667265300
  }
}
Objects {
  Id: 4256572323051841107
  Name: "2D Player Settings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12749046074602368423
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Settings {
    IsDefault: true
    PlayerMovementSettings {
      WalkSpeed: 3000
      MaxAcceleration: 2000
      WalkableFloorAngle: 44
      JumpMaxCount: 1
      JumpVelocity: 1850
      GroundFriction: 4
      GravityScale: 5
      MaxSwimSpeed: 420
      Buoyancy: 1
      TouchForceFactor: 1
      BrakingDecelerationFlying: 600
      MaxFlightSpeed: 600
      MovementControlMode {
        Value: "mc:emovementcontrolmode:fixedaxes"
      }
      LookControlMode {
        Value: "mc:elookcontrolmode:none"
      }
      FacingMode {
        Value: "mc:efacingmode:facemovement"
      }
      DefaultRotationRate: 540
      SlideRotationRate: 20
      LookAtCursorProjectionPlane {
        Value: "mc:eprojectionplane:xy"
      }
      MountedMaxAcceleration: 1800
      MountedWalkSpeed: 960
      MountedJumpMaxCount: 1
      MountedJumpVelocity: 900
      HeadVisibleToSelf: true
      IsSlideEnabled: true
      CanMoveForward: true
      CanMoveBackward: true
      CanMoveLeft: true
      CanMoveRight: true
      AbilityAimMode {
        Value: "mc:eabilityaimmode:viewrelative"
      }
      AppearanceChannelingTime: 2
      MountChannelingTime: 2
      MaxHitpoints: 100
    }
  }
  InstanceHistory {
    SelfId: 13947065398638526885
    SubobjectId: 11592647923584693331
    InstanceId: 7751457978459141576
    TemplateId: 9979267166667265300
  }
}
Objects {
  Id: 6500840470010197801
  Name: "Team Settings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2391944682256423632
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Settings {
    IsDefault: true
    TeamSettings {
      TeamMode_v2 {
        Value: "mc:eteammode:ffa"
      }
    }
  }
}
Objects {
  Id: 14780497684274649572
  Name: "Spawn Settings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2391944682256423632
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Settings {
    IsDefault: true
    RespawnSettings {
      RespawnDelay: 1
      RespawnMode_v2 {
        Value: "mc:erespawnmode:farthestfromenemy"
      }
    }
  }
}
Objects {
  Id: 7367735074338159388
  Name: "Game Settings"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2391944682256423632
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Settings {
    IsDefault: true
    GameSettings {
      EnablePlayerStorage: true
      ChatMode {
        Value: "mc:echatmode:teamandall"
      }
      ChatSettings {
        ChatMode {
        }
        ChatPosition {
          X: 40
        }
        ChatSize {
          X: 450
          Y: 400
        }
        ChatHorizontalAlignment {
          Value: "mc:ecorehorizontalalign:left"
        }
        ChatVerticalAlignment {
          Value: "mc:ecorehorizontalalign:center"
        }
      }
      PhysicsSettings {
        MinContactOffset: 2
        MaxContactOffset: 8
      }
      RelevanceSettings {
        key: "decal"
        value {
          LowDistance: 4500
          MediumDistance: 7000
          HighDistance: 9000
        }
      }
      RelevanceSettings {
        key: "vfx"
        value {
          LowDistance: 4500
          MediumDistance: 7000
          HighDistance: 9000
        }
      }
    }
  }
}
Objects {
  Id: 1910226308942664217
  Name: "Spawns"
  Transform {
    Location {
      X: -1300
      Y: 700
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2391944682256423632
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Spawns"
  }
}
