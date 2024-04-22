
class Root {
    file = "components\arsenals";
    class getItemsFromLoadout {};
    class initArsenal {};
    class postInit { postInit=1; };
    class preinit { preInit=1; };
    class registerArsenalItems {};
    class registerArsenalObject {};
    class removeArsenal {};
};

class Zen {
    file = "components\arsenals\zen";
    class dialogAddArsenalAction {};
    class zenAddArsenalAction { preInit=1; };
};
