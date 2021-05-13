Assets {
  Id: 6754037793306299655
  Name: "Mine Sparks 2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17045787858847446682
      Objects {
        Id: 17045787858847446682
        Name: "Mine Sparks 2"
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
            Float: 7.39324617
          }
          Overrides {
            Name: "bp:Density"
            Float: 4.09029722
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 50
          }
          Overrides {
            Name: "bp:Color"
            Color {
              G: 0.546
              B: 0.138666525
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
