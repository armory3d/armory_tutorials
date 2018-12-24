package arm;

import iron.object.Object;
import iron.system.Input;
import iron.Scene;
import armory.trait.physics.RigidBody;

class SpawnBox extends iron.Trait {
    public function new() {
        super();
        // We want to get notified every frame
        notifyOnUpdate(update);
    }

    function update() {
        // f key was pressed
        if (Input.getKeyboard().started("f")) {
            // Spawn Box object
            Scene.active.spawnObject("Box", null, boxSpawned);
        }
    }

    // Box just got spawned
    function boxSpawned(o:Object) {
        // Translate cube to the location of empty object
        var traitOwner = object;
        o.transform.loc.setFrom(traitOwner.transform.loc);
        // Box object has a rigid body trait
        // Notify physics system to take new location into effect!
        o.getTrait(RigidBody).syncTransform();
    }
}
