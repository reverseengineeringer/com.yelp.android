.class Lcom/yelp/android/database/savedsearch/DatabaseFilter;
.super Lcom/yelp/android/serializable/Filter;
.source "DatabaseFilter.java"


# instance fields
.field private mId:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/serializable/Filter;-><init>()V

    .line 42
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->init(Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Filter;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Filter;)V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    .line 27
    return-void
.end method

.method private getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 47
    const-string/jumbo v0, "one_dollar"

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    const-string/jumbo v0, "two_dollar"

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    const-string/jumbo v0, "three_dollar"

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    const-string/jumbo v0, "four_dollar"

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->buildBooleanPrices()V

    .line 62
    const-string/jumbo v0, "open"

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mState:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    const-string/jumbo v0, "active_deal"

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilter;

    const-string/jumbo v2, "ActiveDeal"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    const v4, 0x7f070417

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_5
    const-string/jumbo v0, "hot_new"

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilter;

    const-string/jumbo v2, "NewBusiness"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    const v4, 0x7f0702e9

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_6
    const-string/jumbo v0, "open_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 83
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mOpenAtTime:Ljava/util/Calendar;

    .line 85
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mOpenAtTime:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    :cond_7
    const-string/jumbo v0, "distance_label"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string/jumbo v2, "distance_radius"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 94
    new-instance v4, Lcom/yelp/android/serializable/at;

    invoke-direct {v4, v0, v2, v3}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    iput-object v4, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mDistance:Lcom/yelp/android/serializable/at;

    .line 96
    const-class v0, Lcom/yelp/android/serializable/Filter$Sort;

    const-string/jumbo v2, "sort"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/serializable/Filter$Sort;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter$Sort;

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    .line 100
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    :cond_8
    new-instance v0, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;

    invoke-direct {v0, p2}, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 106
    :cond_9
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/AttributeFilters;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    .line 107
    return-void
.end method


# virtual methods
.method public delete(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/yelp/android/database/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "filter_id"

    invoke-virtual {p2, v1, v0}, Lcom/yelp/android/database/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    .line 166
    return-void
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    return-wide v0
.end method

.method public save(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getBusinessState()Ljava/util/EnumSet;

    move-result-object v4

    .line 119
    const-string/jumbo v5, "one_dollar"

    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string/jumbo v5, "two_dollar"

    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string/jumbo v5, "three_dollar"

    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string/jumbo v5, "four_dollar"

    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string/jumbo v0, "open"

    sget-object v5, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string/jumbo v0, "active_deal"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string/jumbo v0, "hot_new"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getOpenTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "open_time"

    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getOpenTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getDistance()Lcom/yelp/android/serializable/at;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    const-string/jumbo v0, "distance_label"

    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getDistance()Lcom/yelp/android/serializable/at;

    move-result-object v1

    iget-object v1, v1, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "distance_radius"

    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getDistance()Lcom/yelp/android/serializable/at;

    move-result-object v1

    iget-wide v4, v1, Lcom/yelp/android/serializable/at;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getSort()Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 147
    const-string/jumbo v0, "sort"

    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getSort()Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Filter$Sort;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    const-string/jumbo v0, "id"

    iget-wide v4, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getAttributes()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 154
    new-instance v2, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;

    invoke-direct {v2, v0}, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;-><init>(Lcom/yelp/android/serializable/AttributeFilter;)V

    .line 155
    invoke-virtual {v2, p2, p0}, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;->save(Lcom/yelp/android/database/z;Lcom/yelp/android/database/savedsearch/DatabaseFilter;)V

    goto :goto_5

    :cond_3
    move v0, v2

    .line 119
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 121
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 123
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 125
    goto/16 :goto_3

    :cond_7
    move v1, v2

    .line 127
    goto/16 :goto_4

    .line 157
    :cond_8
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->mId:J

    .line 184
    return-void
.end method
