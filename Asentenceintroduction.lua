local f=CreateFrame("Frame","Eventframe1",UIParent)--JANY
ChatFrame1:AddMessage("载入成功Asentenceintroduction")--JANY



-- 添加设置界面
local JA_Options = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
JA_Options:Hide()
JA_Options.name = "Asentenceintroduction"
JA_Options:SetScript("OnShow", function(self)
	if self.show then return end
	local title = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText("设置")
	
	local website = self:CreateFontString(nil, "ARTWORK")
	website:SetFont(GameFontNormal:GetFont(), 12)
	website:SetWidth(500)
	website:SetPoint("BOTTOMLEFT", 32, 32)
	website:SetJustifyH("LEFT")
	website:SetText("|cff298F00GitHub:|r:https://github.com/janyroo/Asentenceintroduction")
	
	local thanksto = self:CreateFontString(nil, "ARTWORK")
	thanksto:SetFont(GameFontNormal:GetFont(), 12)
	thanksto:SetWidth(500)
	thanksto:SetPoint("BOTTOMLEFT", website, "TOPLEFT", 0, 8)
	thanksto:SetJustifyH("LEFT")
	thanksto:SetText("|cff298F00感谢:|r" .. "Thank you for using it.")	
	
end)
InterfaceOptions_AddCategory(JA_Options)




if GetLocale() == "zhCN" then
	Raiders_List = {
			["怪物"] = {
				{name = "巨钳蝎", raiders = "测试：发现了这个狗"},
				{name = "测试：被诅咒的黑暗犬", raiders = "测试：提前和队伍商量好是一起顺时针跑还是用技能往回传送。"},
			},
			["技能"] = {
				{name = "测试：邪能冲撞", raiders = "测试：敌人正在施放邪能冲撞"},

			},
			["阿塔达萨"] = {
				{name = "邪灵劣魔", raiders = "为了部落。你的敌人很弱小，快碾碎它"},
				{name = "沃卡尔", raiders = "3个图腾必须一起死，图腾死了再打Boss。"},
				{name = "莱赞", raiders = "卡视角躲恐惧，被点名跑河道，别踩土堆。"},
				{name = "女祭司阿伦扎", raiders = "秒ADD，Boss吸血前，血水一人一滩。"},
				{name = "亚兹玛", raiders = "除坦克其他人出分身前集中。"},
			},
			["地渊孢林"] = {
				{name = "长者莉娅克萨", raiders = "打断、Boss冲锋位置远离。"},
				{name = "被感染的岩喉", raiders = "8秒内踩掉小虫子，躲喷吐和冲锋。"},
				{name = "孢子召唤者赞查", raiders = "利用顺劈和点名清蘑菇，躲球。"},
				{name = "不羁畸变怪", raiders = "集体移动，利用清理光圈消debuff，全力输出Boss，输出越高能量越快小怪出得越快Boss死得越快。"},
			},
			["自由镇"]	= {
				{name = "尤朵拉船长", raiders = "音量开大听着夏一可小姐姐的声音嗨起来。"},
				{name = "乔里船长", raiders = "音量开大听着夏一可小姐姐的声音嗨起来。"},
				{name = "拉乌尔船长", raiders = "音量开大听着夏一可小姐姐的声音嗨起来。"},
				{name = "天空上尉库拉格", raiders = "冲锋前有旋涡，看到就躲开，分散点站，中了绿水，跑出范围。"},
				{name = "托萨克", raiders = "远程治疗看到血池就先站到边上去，一般鲨鱼刚扔出来都是点远程，确认丢自己了跑进血池去等鲨鱼追过来。"},
				{name = "哈兰·斯威提", raiders = "出小怪控一下，远程能点就点掉，点不掉或者是进战队，就看清楚只要不是点自己，就冲过去先干掉，省得自爆。"},
			},
			["诸王之眠"]	= {
				{name = "征服者阿卡阿里", raiders = "最早被打死的那个Boss会时不时出现，智者(毒性新星)一定要打断，征服者的翻滚记得直线分担。"},
				{name = "智者扎纳扎尔", raiders = "最早被打死的那个Boss会时不时出现，智者(毒性新星)一定要打断，征服者的翻滚记得直线分担。"},
				{name = "屠夫库拉", raiders = "最早被打死的那个Boss会时不时出现，智者(毒性新星)一定要打断，征服者的翻滚记得直线分担。"},
				{name = "黄金风蛇", raiders = "吐金是直线方向AOE，旋风斩躲开就好，出小怪能打掉就打能控就控。"},
				{name = "殓尸者姆沁巴", raiders = "重点是不要开错棺材，有队友的那个会抖动。"},
				{name = "达萨大王", raiders = "提前和队伍商量好是一起顺时针跑还是用技能往回传送。"},
			},
			["风暴神殿"]	= {
				{name = "阿库希尔", raiders = "点名出人群，驱散或到时间后所有人躲海浪、躲冲锋。"},
				{name = "铁舟修士", raiders = "先女人，急速圈第一时间吃。"},
				{name = "唤风者菲伊", raiders = "先女人，急速圈第一时间吃。"},
				{name = "斯托颂勋爵", raiders = "被点名的抓紧时间撞球，其他人攻击救人。"},
				{name = "低语者沃尔兹斯", raiders = "躲拍地面的触须，打断，转阶段先集火打一边。"},
			},
			["围攻伯拉勒斯"]	= {
				{name = "拜恩比吉中士", raiders = "点名带着风筝，把Boss风筝到炸弹和轰炸区里去。"},
				{name = "恐怖船长洛克伍德", raiders = "躲AOE，秒ADD，捡道具把Boss打下船。"},
				{name = "哈达尔·黑渊", raiders = "躲正面，雕像附近别放白圈。"},
				{name = "维克戈斯", raiders = "t拉住攻城触须dps救人开炮，躲地面技能。"},
			},
			["塞塔里斯神庙"]	= {
				{name = "阿德里斯", raiders = "打身上没电的那个，躲正面，近战范围分散。"},
				{name = "阿斯匹克斯", raiders = "打身上没电的那个，躲正面，近战范围分散。"},
				{name = "米利克萨", raiders = "定身/控制技能救队友，路径躲开。"},
				{name = "加瓦兹特", raiders = "挡好电，挡1个塔等buff消掉了再去挡。"},
				{name = "萨塔里斯的化身", raiders = "驱散、在没有层数的时候治疗Boss/用球，蛤蟆第一时间打掉不然别怪奶不动。"},
			},
			["托尔达戈"]	= {
				{name = "泥沙女王", raiders = "躲陷阱，小虫治疗OT杀。"},
				{name = "杰斯·豪里斯", raiders = "提前开牢房清怪，打断恐惧，飞刀卡视野，P2集火Boss。"},
				{name = "骑士队长瓦莱莉", raiders = "留一个安全角落就行。"},
				{name = "科古斯狱长", raiders = "靠墙分散，用最少的移动躲技能，1层点名自己吃，2层开始坦克/其他职业帮挡。"},
			},
			["维克雷斯庄园"]	= {
				{name = "贪食的拉尔", raiders = "躲正面技能，躲地上绿水，杀ADD。"},
				{name = "魂缚巨像", raiders = "层数过高时把boss带到野火上烤一下，其他人躲灵魂。"},
				{name = "女巫布里亚", raiders = "输出变大的Boss，打断，队友被控制晕着打。"},
				{name = "女巫马拉迪", raiders = "输出变大的Boss，打断，队友被控制晕着打。"},
				{name = "女巫索林娜", raiders = "输出变大的Boss，打断，队友被控制晕着打。"},
				{name = "维克雷斯勋爵和夫人", raiders = "中毒出人群，躲漩涡。"},
				{name = "维克雷斯夫人", raiders = "中毒出人群，躲漩涡。"},
				{name = "高莱克·图尔", raiders = "先杀奴隶主，捡瓶子烧尸体。"},
			},
			["暴富矿区！！"]	= {
				{name = "投币式群体打击者", raiders = "躲正面、把球踢还给Boss。"},
				{name = "艾泽洛克", raiders = "躲正面、先杀小怪。"},
				{name = "瑞克莎·流火", raiders = "保证身后没有黄水和即将喷发的管子。"},
				{name = "商业大亨拉兹敦克", raiders = "P1留心直升机轰炸，点名出人群，P2被点名跑到钻头下面。"},
			},
		}
else
	Raiders_List = {}
end



--JANY核对信息
local function getRaidersByEncounterName(name)
for i,k in pairs(Raiders_List) do
	for i,v in pairs(k) do
		if v.name == name then
			return v.raiders
		end
	end
end
end


--JANY-- 发信息
function SendBossNotes(bossname)

	local raidersText
	local encounterName
	if EncounterJournal and EncounterJournal.encounterID then
		encounterName = EJ_GetEncounterInfo(EncounterJournal.encounterID)
	end
	if bossname then
		raidersText = getRaidersByEncounterName(bossname) or "无此BOSS数据"
	elseif encounterName then
		raidersText = getRaidersByEncounterName(encounterName) or "无此BOSS数据"
		bossname = encounterName
	end
	if raidersText and bossname and raidersText~="无此BOSS数据" then
		bossname = '【攻略】:' .. bossname .. "-"
		if IsInRaid() then
			SendChatMessage(bossname .. raidersText, (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or "raid");
			--SendChatMessage(raidersText, (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or "raid");
			--DEFAULT_CHAT_FRAME:AddMessage(bossname, "say");
			--DEFAULT_CHAT_FRAME:AddMessage(raidersText, "say");

		elseif IsInGroup() then
			SendChatMessage(bossname .. raidersText, (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or "party");
			--SendChatMessage(raidersText, (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or "party");
			--DEFAULT_CHAT_FRAME:AddMessage(bossname, "say");
			--DEFAULT_CHAT_FRAME:AddMessage(raidersText, "say");
		else
			SendChatMessage(bossname .. raidersText, "YELL");
			--SendChatMessage(raidersText, "say");
			--DEFAULT_CHAT_FRAME:AddMessage(bossname, "say");
			--DEFAULT_CHAT_FRAME:AddMessage(raidersText, "say");
		end
	--else
		--DEFAULT_CHAT_FRAME:AddMessage("测试：数据库无此数据",1,0,0)
	end
end
--JANY进入战斗离开战斗
f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")   
f:SetScript("OnEvent", function (self,event)
	if event == "PLAYER_REGEN_ENABLED" then
		--DEFAULT_CHAT_FRAME:AddMessage("离开战斗状态",1,0,0)
	elseif event == "PLAYER_REGEN_DISABLED" then
		--DEFAULT_CHAT_FRAME:AddMessage("进入战斗状态",1,0,0)
		if UnitName("target") == nil then
			DEFAULT_CHAT_FRAME:AddMessage("没有目标",1,0,0)
			return
		end
		SendBossNotes(UnitName("target"));
	end	
end);