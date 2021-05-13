Assets {
  Id: 14166054208088192975
  Name: "Custom Electric Surface"
  PlatformAssetType: 13
  SerializationVersion: 84
  CustomMaterialAsset {
    BaseMaterialId: 8706405690515755615
    ParameterOverrides {
      Overrides {
        Name: "emissiveboost"
        Float: 20.5762463
      }
      Overrides {
        Name: "texture scale"
        Float: 3.14613605
      }
      Overrides {
        Name: "arc speed"
        Float: 0.724879205
      }
      Overrides {
        Name: "offsetamount"
        Float: 2.87159324
      }
      Overrides {
        Name: "bolt distortion scale"
        Float: 0.601692915
      }
      Overrides {
        Name: "arc inner color"
        Color {
          R: 0.301579148
          B: 0.962
          A: 1
        }
      }
      Overrides {
        Name: "arc outer color"
        Color {
          G: 0.802000046
          B: 0.0859284401
          A: 1
        }
      }
      Overrides {
        Name: "shape 1"
        Float: 0.656167865
      }
    }
    Assets {
      Id: 8706405690515755615
      Name: "Electric Surface"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_electrical_surface"
      }
    }
  }
}
