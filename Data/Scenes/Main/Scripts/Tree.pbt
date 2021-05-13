Name: "Scripts"
RootId: 11774279965117338039
Objects {
  Id: 13202011436137738572
  Name: "Ship_Spawner"
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
  ParentId: 11774279965117338039
  UnregisteredParameters {
    Overrides {
      Name: "cs:player_ship_1"
      AssetReference {
        Id: 8457387705745698046
      }
    }
    Overrides {
      Name: "cs:player_ship_2"
      AssetReference {
        Id: 13264910955097239978
      }
    }
    Overrides {
      Name: "cs:player_ship_3"
      AssetReference {
        Id: 6420076215830925896
      }
    }
    Overrides {
      Name: "cs:player_ship_4"
      AssetReference {
        Id: 2047521807594327387
      }
    }
    Overrides {
      Name: "cs:player_ship_5"
      AssetReference {
        Id: 4752967667524700553
      }
    }
    Overrides {
      Name: "cs:player_ship_6"
      AssetReference {
        Id: 12954077111275156685
      }
    }
    Overrides {
      Name: "cs:player_ship_7"
      AssetReference {
        Id: 9419001882050467291
      }
    }
    Overrides {
      Name: "cs:player_ship_8"
      AssetReference {
        Id: 16067978624531994352
      }
    }
    Overrides {
      Name: "cs:collider"
      AssetReference {
        Id: 15436863888128216644
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 15578025641225491785
    }
  }
}
Objects {
  Id: 1920995826763578141
  Name: "Equipment_Server"
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
  ParentId: 11774279965117338039
  UnregisteredParameters {
    Overrides {
      Name: "cs:mine_1"
      AssetReference {
        Id: 17863446951783687329
      }
    }
    Overrides {
      Name: "cs:mine_2"
      AssetReference {
        Id: 10402090681507170201
      }
    }
    Overrides {
      Name: "cs:mine_3"
      AssetReference {
        Id: 14504243259671972626
      }
    }
    Overrides {
      Name: "cs:mine_4"
      AssetReference {
        Id: 3637317866868135204
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:big_boom"
      AssetReference {
        Id: 13105834106978054530
      }
    }
    Overrides {
      Name: "cs:weapon_1"
      AssetReference {
        Id: 6797802313655296201
      }
    }
    Overrides {
      Name: "cs:weapon_2"
      AssetReference {
        Id: 18185468949455774229
      }
    }
    Overrides {
      Name: "cs:weapon_3"
      AssetReference {
        Id: 12285444236222543397
      }
    }
    Overrides {
      Name: "cs:weapon_4"
      AssetReference {
        Id: 2252543938854856474
      }
    }
    Overrides {
      Name: "cs:weapon_5"
      AssetReference {
        Id: 10483650917443811687
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 756055552190809575
    }
  }
}
Objects {
  Id: 6290353329606171186
  Name: "Server"
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
  ParentId: 11774279965117338039
  ChildIds: 6485591840232246886
  ChildIds: 3282794933978482327
  ChildIds: 15823475142009607561
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
  NetworkContext {
    Type: Server
  }
}
Objects {
  Id: 15823475142009607561
  Name: "Leaderboards_Server"
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
  ParentId: 6290353329606171186
  UnregisteredParameters {
    Overrides {
      Name: "cs:score"
      NetReference {
        Key: "6507D2D12EAE6DE9"
        Type {
          Value: "mc:enetreferencetype:leaderboard"
        }
      }
    }
    Overrides {
      Name: "cs:kills"
      NetReference {
        Key: "725969DDEF822E35"
        Type {
          Value: "mc:enetreferencetype:leaderboard"
        }
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 13877300594157573536
    }
  }
}
Objects {
  Id: 3282794933978482327
  Name: "Player_Server"
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
  ParentId: 6290353329606171186
  UnregisteredParameters {
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 13374306381663493018
    }
  }
}
Objects {
  Id: 6485591840232246886
  Name: "Game_Manager_Server"
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
  ParentId: 6290353329606171186
  UnregisteredParameters {
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 12053666407856839603
    }
  }
}
Objects {
  Id: 4018839149844167666
  Name: "Client"
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
  ParentId: 11774279965117338039
  ChildIds: 5724476370600150492
  ChildIds: 8765039593534545135
  ChildIds: 16254890061336438242
  ChildIds: 9951062669483003615
  ChildIds: 907887707571700702
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
  Id: 907887707571700702
  Name: "Leaderboards_Client"
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
  ParentId: 4018839149844167666
  UnregisteredParameters {
    Overrides {
      Name: "cs:score"
      NetReference {
        Key: "6507D2D12EAE6DE9"
        Type {
          Value: "mc:enetreferencetype:leaderboard"
        }
      }
    }
    Overrides {
      Name: "cs:kills"
      NetReference {
        Key: "725969DDEF822E35"
        Type {
          Value: "mc:enetreferencetype:leaderboard"
        }
      }
    }
    Overrides {
      Name: "cs:score_leaderboards"
      ObjectReference {
        SelfId: 7813977161096209679
      }
    }
    Overrides {
      Name: "cs:kills_leaderboards"
      ObjectReference {
        SelfId: 18207368841809418362
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:leaderboards"
      ObjectReference {
        SelfId: 9918412584640093001
      }
    }
    Overrides {
      Name: "cs:weclome"
      ObjectReference {
        SelfId: 3263812008584352995
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 11534721534130106739
    }
  }
}
Objects {
  Id: 9951062669483003615
  Name: "Notifications_Client"
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
  ParentId: 4018839149844167666
  UnregisteredParameters {
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:notification"
      ObjectReference {
        SelfId: 10758173616741373867
      }
    }
    Overrides {
      Name: "cs:message_1"
      ObjectReference {
        SelfId: 2422362342678961326
      }
    }
    Overrides {
      Name: "cs:message_2"
      ObjectReference {
        SelfId: 14762578973586575559
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 15257808633387458156
    }
  }
}
Objects {
  Id: 16254890061336438242
  Name: "Music_Manager_Client"
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
  ParentId: 4018839149844167666
  UnregisteredParameters {
    Overrides {
      Name: "cs:music"
      ObjectReference {
        SelfId: 16913486478630992892
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 10581374120400946110
    }
  }
}
Objects {
  Id: 8765039593534545135
  Name: "Player_Client"
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
  ParentId: 4018839149844167666
  UnregisteredParameters {
    Overrides {
      Name: "cs:player_indicator"
      AssetReference {
        Id: 3059186985268505774
      }
    }
    Overrides {
      Name: "cs:ui_container"
      ObjectReference {
        SelfId: 17800859117278780278
      }
    }
    Overrides {
      Name: "cs:color_1"
      Color {
        R: 1
        G: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:color_2"
      Color {
        R: 0.00200003386
        G: 0.271302223
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:color_3"
      Color {
        R: 1
        G: 0.0980000496
        B: 0.0980000496
        A: 1
      }
    }
    Overrides {
      Name: "cs:color_4"
      Color {
        G: 0.690000176
        B: 0.186190471
        A: 1
      }
    }
    Overrides {
      Name: "cs:color_5"
      Color {
        R: 0.226000071
        G: 0.914000154
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:color_6"
      Color {
        R: 0.0910159498
        G: 0.122000098
        A: 1
      }
    }
    Overrides {
      Name: "cs:stat_board"
      ObjectReference {
        SelfId: 12953706372811308547
      }
    }
    Overrides {
      Name: "cs:stat_rows"
      ObjectReference {
        SelfId: 17257043461715093249
      }
    }
    Overrides {
      Name: "cs:row"
      AssetReference {
        Id: 12546499898711746102
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:player_explosion"
      AssetReference {
        Id: 9200718025288725666
      }
    }
    Overrides {
      Name: "cs:big_boom"
      ObjectReference {
        SelfId: 4773700572338166325
      }
    }
    Overrides {
      Name: "cs:big_boom_progress"
      ObjectReference {
        SelfId: 11970851264104108264
      }
    }
    Overrides {
      Name: "cs:welcome"
      ObjectReference {
        SelfId: 3263812008584352995
      }
    }
    Overrides {
      Name: "cs:color_7"
      Color {
        R: 0.449873209
        G: 0.194
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:color_8"
      Color {
        R: 0.73
        A: 1
      }
    }
    Overrides {
      Name: "cs:leaderboards"
      ObjectReference {
        SelfId: 9918412584640093001
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 10082363664338537991
    }
  }
}
Objects {
  Id: 5724476370600150492
  Name: "Player_Controller"
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
  ParentId: 4018839149844167666
  UnregisteredParameters {
    Overrides {
      Name: "cs:camera"
      ObjectReference {
        SelfId: 2051787786251312450
      }
    }
    Overrides {
      Name: "cs:dome"
      ObjectReference {
        SelfId: 16837106940141533249
      }
    }
    Overrides {
      Name: "cs:nebula"
      ObjectReference {
        SelfId: 2623518730287534235
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 1266973123187564534
    }
  }
}
