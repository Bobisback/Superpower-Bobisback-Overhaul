-- Insert SQL Rules Here 

--Faster Aircraft Animation
UPDATE ArtDefine_UnitMemberCombats SET MoveRate = 2*MoveRate;
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMin = 2*TurnRateMin WHERE MoveRate > 0;
UPDATE ArtDefine_UnitMemberCombats SET TurnRateMax = 2*TurnRateMax WHERE MoveRate > 0;







--Trade Route Scale


UPDATE Worlds SET TradeRouteDistanceMod=60 WHERE Type='WORLDSIZE_DUEL';
UPDATE Worlds SET TradeRouteDistanceMod=60 WHERE Type='WORLDSIZE_TINY';
UPDATE Worlds SET TradeRouteDistanceMod=70 WHERE Type='WORLDSIZE_SMALL';
UPDATE Worlds SET TradeRouteDistanceMod=80 WHERE Type='WORLDSIZE_STANDARD';
UPDATE Worlds SET TradeRouteDistanceMod=100 WHERE Type='WORLDSIZE_LARGE';
UPDATE Worlds SET TradeRouteDistanceMod=120 WHERE Type='WORLDSIZE_HUGE';




UPDATE GameSpeeds SET TradeRouteSpeedMod=66 WHERE Type='GAMESPEED_QUICK';
UPDATE GameSpeeds SET TradeRouteSpeedMod=100 WHERE Type='GAMESPEED_STANDARD';
UPDATE GameSpeeds SET TradeRouteSpeedMod=100 WHERE Type='GAMESPEED_EPIC';
UPDATE GameSpeeds SET TradeRouteSpeedMod=150 WHERE Type='GAMESPEED_MARATHON';


UPDATE Units SET Moves=3 WHERE Type='UNIT_CARAVAN';
UPDATE Units SET Moves=6 WHERE Type='UNIT_CARGO_SHIP';



--UPDATE ArtDefine_UnitMemberInfos SET Granny = '' WHERE Type = 'ART_DEF_UNIT_MEMBER_U_DANISH_LONGBOAT';

--Slow down tech pace in later era's

UPDATE Technologies SET Cost = 1.25*Cost WHERE Era = "ERA_INDUSTRIAL";
UPDATE Technologies SET Cost = 1.5*Cost WHERE Era = "ERA_MODERN";
UPDATE Technologies SET Cost = 1.75*Cost WHERE Era = "ERA_WORLDWAR";
UPDATE Technologies SET Cost = 2*Cost WHERE Era = "ERA_POSTMODERN";
UPDATE Technologies SET Cost = 2.5*Cost WHERE Era = "ERA_INFORMATION";
UPDATE Technologies SET Cost = 3*Cost WHERE Era = "ERA_FUTURE";

