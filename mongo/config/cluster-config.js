var cfg = rs.config();
cfg.members[0].host='localhost:27017';
rs.reconfig(cfg);
