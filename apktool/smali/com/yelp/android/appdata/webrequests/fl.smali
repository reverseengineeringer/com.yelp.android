.class public Lcom/yelp/android/appdata/webrequests/fl;
.super Lcom/yelp/android/av/g;
.source "SaveAccountConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

.field private final b:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

.field private final c:Lcom/yelp/android/appdata/an;

.field private final d:Lcom/yelp/android/appdata/ak;

.field private final e:Lcom/yelp/android/appdata/am;

.field private final f:Lcom/yelp/android/appdata/al;

.field private final g:Ljava/lang/Boolean;

.field private final h:Lcom/yelp/android/appdata/ag;

.field private final i:Lcom/yelp/android/appdata/ah;

.field private final j:Lcom/yelp/android/appdata/ai;

.field private final k:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;Lcom/yelp/android/appdata/an;Lcom/yelp/android/appdata/am;Lcom/yelp/android/appdata/al;Ljava/lang/Boolean;Lcom/yelp/android/appdata/ak;Lcom/yelp/android/appdata/ag;Lcom/yelp/android/appdata/ah;Lcom/yelp/android/appdata/ai;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;",
            "Lcom/yelp/android/appdata/an;",
            "Lcom/yelp/android/appdata/am;",
            "Lcom/yelp/android/appdata/al;",
            "Ljava/lang/Boolean;",
            "Lcom/yelp/android/appdata/ak;",
            "Lcom/yelp/android/appdata/ag;",
            "Lcom/yelp/android/appdata/ah;",
            "Lcom/yelp/android/appdata/ai;",
            "Landroid/location/Location;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v3, "account/config/save"

    move-object/from16 v0, p14

    invoke-direct {p0, v2, v3, v0}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 91
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/fl;->a:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 92
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/fl;->b:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 93
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/fl;->k:Ljava/lang/Boolean;

    .line 94
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/fl;->c:Lcom/yelp/android/appdata/an;

    .line 95
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/fl;->e:Lcom/yelp/android/appdata/am;

    .line 96
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/fl;->f:Lcom/yelp/android/appdata/al;

    .line 97
    iput-object p6, p0, Lcom/yelp/android/appdata/webrequests/fl;->g:Ljava/lang/Boolean;

    .line 98
    iput-object p8, p0, Lcom/yelp/android/appdata/webrequests/fl;->h:Lcom/yelp/android/appdata/ag;

    .line 99
    iput-object p9, p0, Lcom/yelp/android/appdata/webrequests/fl;->i:Lcom/yelp/android/appdata/ah;

    .line 100
    iput-object p7, p0, Lcom/yelp/android/appdata/webrequests/fl;->d:Lcom/yelp/android/appdata/ak;

    .line 101
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/fl;->j:Lcom/yelp/android/appdata/ai;

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const-string/jumbo v2, "alert_from_location"

    iget v3, p1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->id:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 106
    :cond_0
    if-eqz p2, :cond_1

    .line 107
    const-string/jumbo v2, "alerts"

    iget v3, p2, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->id:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 109
    :cond_1
    if-eqz p3, :cond_2

    .line 110
    const-string/jumbo v2, "tip_alerts"

    iget v3, p3, Lcom/yelp/android/appdata/an;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 112
    :cond_2
    if-eqz p4, :cond_3

    .line 113
    const-string/jumbo v2, "photo_alerts"

    iget v3, p4, Lcom/yelp/android/appdata/am;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 115
    :cond_3
    if-eqz p5, :cond_4

    .line 116
    const-string/jumbo v2, "message_alerts"

    iget v3, p5, Lcom/yelp/android/appdata/al;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 118
    :cond_4
    if-eqz p6, :cond_5

    .line 119
    const-string/jumbo v2, "preview_message_text"

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;Z)V

    .line 121
    :cond_5
    if-eqz p7, :cond_6

    .line 122
    const-string/jumbo v2, "compliment_alerts"

    iget v3, p7, Lcom/yelp/android/appdata/ak;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 124
    :cond_6
    if-nez p11, :cond_7

    .line 125
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object p11

    .line 127
    :cond_7
    if-eqz p12, :cond_8

    .line 128
    const-string/jumbo v2, "share_awards"

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;Z)V

    .line 130
    :cond_8
    if-eqz p13, :cond_9

    .line 131
    const-string/jumbo v2, "c2dm_registration_id"

    move-object/from16 v0, p13

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_9
    if-eqz p8, :cond_a

    .line 134
    const-string/jumbo v2, "check_in_comment_alerts"

    iget v3, p8, Lcom/yelp/android/appdata/ag;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 136
    :cond_a
    if-eqz p9, :cond_b

    .line 137
    const-string/jumbo v2, "check_in_comment_other_threads_alerts"

    iget v3, p9, Lcom/yelp/android/appdata/ah;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 139
    :cond_b
    if-eqz p10, :cond_c

    .line 140
    const-string/jumbo v2, "check_in_feedback_alerts"

    move-object/from16 v0, p10

    iget v3, v0, Lcom/yelp/android/appdata/ai;->a:I

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;I)V

    .line 142
    :cond_c
    if-eqz p11, :cond_d

    .line 143
    const-string/jumbo v2, "longitude"

    invoke-virtual/range {p11 .. p11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;D)V

    .line 144
    const-string/jumbo v2, "latitude"

    invoke-virtual/range {p11 .. p11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;D)V

    .line 145
    const-string/jumbo v2, "accuracy"

    invoke-virtual/range {p11 .. p11}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/yelp/android/appdata/webrequests/fl;->addPostParam(Ljava/lang/String;D)V

    .line 147
    :cond_d
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;Lcom/yelp/android/appdata/an;Lcom/yelp/android/appdata/am;Lcom/yelp/android/appdata/al;Ljava/lang/Boolean;Lcom/yelp/android/appdata/ak;Lcom/yelp/android/appdata/ag;Lcom/yelp/android/appdata/ah;Lcom/yelp/android/appdata/ai;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;",
            "Lcom/yelp/android/appdata/an;",
            "Lcom/yelp/android/appdata/am;",
            "Lcom/yelp/android/appdata/al;",
            "Ljava/lang/Boolean;",
            "Lcom/yelp/android/appdata/ak;",
            "Lcom/yelp/android/appdata/ag;",
            "Lcom/yelp/android/appdata/ah;",
            "Lcom/yelp/android/appdata/ai;",
            "Landroid/location/Location;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/yelp/android/appdata/webrequests/fl;-><init>(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;Lcom/yelp/android/appdata/an;Lcom/yelp/android/appdata/am;Lcom/yelp/android/appdata/al;Ljava/lang/Boolean;Lcom/yelp/android/appdata/ak;Lcom/yelp/android/appdata/ag;Lcom/yelp/android/appdata/ah;Lcom/yelp/android/appdata/ai;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/location/Location;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->c()Lcom/yelp/android/appdata/an;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->f()Lcom/yelp/android/appdata/am;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->d()Lcom/yelp/android/appdata/al;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->e()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->g()Lcom/yelp/android/appdata/ak;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->l()Lcom/yelp/android/appdata/ag;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->k()Lcom/yelp/android/appdata/ah;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->m()Lcom/yelp/android/appdata/ai;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->j()Ljava/lang/Boolean;

    move-result-object v13

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    invoke-direct/range {v0 .. v14}, Lcom/yelp/android/appdata/webrequests/fl;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;Lcom/yelp/android/appdata/an;Lcom/yelp/android/appdata/am;Lcom/yelp/android/appdata/al;Ljava/lang/Boolean;Lcom/yelp/android/appdata/ak;Lcom/yelp/android/appdata/ag;Lcom/yelp/android/appdata/ah;Lcom/yelp/android/appdata/ai;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-direct {v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->a:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 153
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->b:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 154
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Ljava/lang/Boolean;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 155
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->c:Lcom/yelp/android/appdata/an;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/an;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 156
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->e:Lcom/yelp/android/appdata/am;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/am;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 157
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->f:Lcom/yelp/android/appdata/al;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/al;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 158
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b(Ljava/lang/Boolean;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 159
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->d:Lcom/yelp/android/appdata/ak;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/ak;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 160
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->h:Lcom/yelp/android/appdata/ag;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/ag;)V

    .line 161
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->i:Lcom/yelp/android/appdata/ah;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/ah;)V

    .line 162
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/fl;->j:Lcom/yelp/android/appdata/ai;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/ai;)V

    .line 163
    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fl;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    return-object v0
.end method
