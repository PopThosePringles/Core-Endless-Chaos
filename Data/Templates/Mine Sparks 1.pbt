Assets {
  Id: 1096622932553207070
  Name: "Mine Sparks 1"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17045787858847446682
      Objects {
        Id: 17045787858847446682
        Name: "Mine Sparks 1"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "bp:Smoke Gravity"
            Float: 3.11077118
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 6.5372448
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 4.89372587
          }
          Overrides {
            Name: "bp:Density"
            Float: 1.50150228
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 50
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.978000045
              G: 4.66346762e-07
              A: 1
            }
          }
          Overrides {
            Name: "bp:Smoke"
            Bool: true
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 1961506515394748556
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 1961506515394748556
      Name: "Fuse Sparks VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_fuse_sparks"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
