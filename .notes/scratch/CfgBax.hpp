
class cfgbax {
  class loadouts { // component
    class loadouts { // loadouts variable
      class west {
        class loadout1 { // loadout
          name = "Rifleman";
          loadoutArray[] = {{{{{}}}}}; // Loadout array here
        };
        // more loadouts here
      };
      class east {
        // loadouts here
      };
      class resistance {
        // loadouts here
      };
      class civilian {
        // loadouts here
      };
    };
    class classes { // classes variable
      class west {
        class class1 { // class
          name = "Infantry";
          loadouts[] = {""};
        };
        // more classes here
      };
      class east {
        // classes here
      };
      class resistance {
        // classes here
      };
      class civilian {
        // classes here
      };
    };
    class presets { // presets variable
      class west {
        class preset1 { // preset
          role = "Rifleman"; // A units role description
          preset = {"Rifleman", "Infantry"}; // preset data. {loadout,class}
        };
        // more classes here
      };
      class east {
        // preset here
      };
      class resistance {
        // preset here
      };
      class civilian {
        // preset here
      };
    };
  };
  class arsenal { // component
    // TODO
    class arsenals { // arsenals variable
      class west {
        class arsenal1 { // arsenal definition
          name = "Infantry";
          items[] = {}; // list of items
        };
        // more arsenals
      };
      class east {
        // arsenals
      };
      class resistance {
        // arsenals
      };
      class civilian {
        // arsenals
      };
    };
    class presets { // presets variable
      class west {
        class preset1 { // preset
          role = "Rifleman";    // A units role description
          arsenal = "Infantry"; // loadout name
        };
        // more classes here
      };
      class east {
        // preset here
      };
      class resistance {
        // preset here
      };
      class civilian {
        // preset here
      };
    };
  };
  class mapMarkers { // component
    class preregistredGroups {
      class west {
        class group1 { // preset
          name = "Alpha 1-1";     // A units role description
          color[] = {1, 1, 1, 1}; // value may not be present
          icon = "filepath";      // value may not be present
        };
        // more groups here
      };
      class east {
        // groups here
      };
      class resistance {
        // groups here
      };
      class civilian {
        // groups here
      };
    };
  };
  class radios { // component
    // TODO
  };
  class supplyCrates { // component
    // TODO
  };
  class settings { // general framework settings
    // TODO
    // Should settings be in its own class or in the components respective class?
  };
};
