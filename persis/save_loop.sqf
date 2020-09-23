while {true} do {
//sleep 300;
sleep 60;
diag_log format["PST save_loop started, %1",name player];
//diag_log "PST autosave started (save_loop)";
_save = [player] execvm "persis\savestate.sqf";
};
