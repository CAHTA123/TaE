extends Node2D

class_name entity

##DEFENCE
var hp #здоровье 
var hp_regen #регенерация здоровья
var defense #защита
var ideal_defense #идеальная защита
var spike_damage #обратный урон
var lifesteal #кража жизни
var knockback_chance # шанс отталкивания при получение урона
var knockback_force #сила отталкивания
var air_shield_count #кол-во воздушных щитов
var air_shield_speed  #скорость воздушных щитов
var distance_wave #дистанция волны
var time_wave #частота волны
var multi_life #несколько жизней
var wall_hp #хп стены
var wall_time #востоновление стены
var speed = 10 #скорость 

 ##DAMAGE
var damage #здоровье 
var attack_speed #регенерация здоровья
var crit_chance #защита
var crit_damage #идеальная защита
var attack_distance #обратный урон
var damage_to_distance #кража жизни
var multi_shot_chance # шанс отталкивания при получение урона
var multi_shot_count #сила отталкивания
var fastfire_chance #кол-во воздушных щитов
var fastfire_time  #скорость воздушных щитов
var bounce_shot_chance #дистанция волны
var bounce_shot_count #частота волны
var ultracrit_chance #несколько жизней
var ultracrit_count #хп стены
var armor_cut_chance #востоновление стены
var armor_cut_count #востоновление стены

signal signal_death
