Assets {
  Id: 13376314172963281273
  Name: "Laser 1"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11225379010334446003
      Objects {
        Id: 11225379010334446003
        Name: "Laser 1"
        Transform {
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.25
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11113437111973115868
        Lifespan: 5
        WantsNetworking: true
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
        Id: 11113437111973115868
        Name: "Lasercontext"
        Transform {
          Location {
            X: -6.10351563e-05
            Y: -2.94647217
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11225379010334446003
        ChildIds: 8498221701205606924
        ChildIds: 17694550445109362372
        WantsNetworking: true
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
      }
      Objects {
        Id: 8498221701205606924
        Name: "Capsule"
        Transform {
          Location {
            X: 0.59375
            Y: 2.84374976
            Z: 0.96875
          }
          Rotation {
            Roll: 89.9999542
          }
          Scale {
            X: 0.318285614
            Y: 0.184333444
            Z: 1.38149107
          }
        }
        ParentId: 11113437111973115868
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3336189239738710320
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.97
              G: 0.877618968
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 16045694788871514623
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17694550445109362372
        Name: "Gunshot Laser Pistol Set 01 SFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -89.9999847
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 11113437111973115868
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_gunshot_laserpistol_01:11"
            }
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
            Id: 18236288240526619275
          }
          TeamSettings {
          }
          AudioBP {
            AutoPlay: true
            Volume: 1
            Falloff: 5000
            Radius: 800
            IsAttenuationEnabled: true
          }
        }
      }
    }
    Assets {
      Id: 16045694788871514623
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 18236288240526619275
      Name: "Gunshot Laser Pistol Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_gunshot_laser_pistol_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
