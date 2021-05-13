Assets {
  Id: 10483650917443811687
  Name: "Weapon Laser 5"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3808714018658476787
      Objects {
        Id: 3808714018658476787
        Name: "Weapon Laser 5"
        Transform {
          Scale {
            X: 0.99999994
            Y: 0.99999994
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9040161218561425724
        UnregisteredParameters {
        }
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
        Equipment {
          SocketName: "right_prop"
          PickupTrigger {
          }
          Weapon {
            ProjectileAssetRef {
              Id: 18266748253898961890
            }
            MuzzleFlashAssetRef {
              Id: 841534158063459245
            }
            TrailAssetRef {
              Id: 3638275219310500456
            }
            ImpactAssetRef {
              Id: 15980469071148175189
            }
            UseReticle: true
            Muzzle {
              Location {
              }
            }
            AnimationSet: "1hand_pistol_stance"
            OutOfAmmoSfxAssetRef {
              Id: 841534158063459245
            }
            ReloadSfxAssetRef {
              Id: 841534158063459245
            }
            ShootAnimation: "2hand_rifle_shoot"
            ImpactProjectileAssetRef {
              Id: 841534158063459245
            }
            BeamAssetRef {
              Id: 841534158063459245
            }
            BurstCount: 50
            BurstDuration: 8
            BurstStopsWithRelease: true
            AttackCooldown: 0.25
            Range: 70000
            ImpactPlayerAssetRef {
              Id: 307406115803496087
            }
            ReticleType {
              Value: "mc:ereticletype:none"
            }
            MaxAmmo: -1
            AmmoType: "rounds"
            MultiShot: 1
            ProjectileSpeed: 7500
            ProjectileLifeSpan: 3
            ProjectileLength: 200
            ProjectileRadius: 100
            ProjectileBounces: 1
            DefaultAbility {
              SubObjectId: 9040161218561425724
            }
            ReloadAbility {
              SelfId: 841534158063459245
            }
            Damage: 50
            WeaponTrajectoryMode {
              Value: "mc:eweapontrajectorymode:custom"
            }
          }
        }
      }
      Objects {
        Id: 9040161218561425724
        Name: "Shoot"
        ParentId: 3808714018658476787
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Ability {
          IsEnabled: true
          KeyBinding: "ability_primary"
          CastPhaseSettings {
            Duration: 0.03
            CanMove: true
            CanJump: true
            CanRotate: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          ExecutePhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            IsTargetDataUpdated: true
            Facing_V2 {
              Value: "mc:eabilitysetfacing:none"
            }
          }
          RecoveryPhaseSettings {
            Duration: 0.01
            CanMove: true
            CanJump: true
            CanRotate: true
            IsTargetDataUpdated: true
          }
          CooldownPhaseSettings {
            Duration: 0.1
            CanMove: true
            CanJump: true
            CanRotate: true
            IsTargetDataUpdated: true
          }
          Animation: "1hand_pistol_shoot"
          CanBePrevented: true
          KeyBinding_v2 {
            Value: "mc:egameaction:primaryaction"
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 84
}
