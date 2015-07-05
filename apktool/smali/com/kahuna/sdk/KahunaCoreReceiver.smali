.class public Lcom/kahuna/sdk/KahunaCoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KahunaCoreReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 168
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 162
    :pswitch_0
    const-string/jumbo v0, "enter"

    goto :goto_0

    .line 165
    :pswitch_1
    const-string/jumbo v0, "exit"

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 75
    invoke-static {p2}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to create a Geofence Intent for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Geofence Intent processing has an error. Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v2

    .line 93
    if-eq v2, v8, :cond_3

    const/4 v1, 0x2

    if-ne v2, v1, :cond_b

    .line 95
    :cond_3
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_4

    .line 96
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v3, "Recevied Kahuna Geofence update!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v3

    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 102
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/Geofence;

    invoke-interface {v0}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 103
    aput-object v0, v4, v1

    .line 105
    sget-boolean v5, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v5, :cond_5

    .line 106
    const-string/jumbo v5, "KahunaAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GeofenceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Transition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v2}, Lcom/kahuna/sdk/KahunaCoreReceiver;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_5
    const-string/jumbo v5, "KahunaEngineRegion_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 112
    if-ne v2, v8, :cond_a

    .line 115
    invoke-static {v8}, Lcom/kahuna/sdk/ai;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 116
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_6

    .line 117
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v2, "Updated existing regions registered from before 516, ignoring false first enter event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_6
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kahuna/sdk/location/m;->a(Lcom/kahuna/sdk/h;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_7
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v5

    invoke-static {v5}, Lcom/kahuna/sdk/location/m;->b(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v5

    .line 125
    if-eqz v5, :cond_8

    .line 126
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 127
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 128
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received Geofence enter again even though we are already in region for id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Not tracking geofence enter event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    :cond_8
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/kahuna/sdk/location/m;->a(Lcom/kahuna/sdk/h;Ljava/lang/String;)V

    .line 140
    :goto_2
    const-string/jumbo v5, "KahunaEngineRegion_"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-direct {p0, v2}, Lcom/kahuna/sdk/KahunaCoreReceiver;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/kahuna/sdk/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 137
    :cond_a
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v5

    invoke-static {v5}, Lcom/kahuna/sdk/location/m;->c(Lcom/kahuna/sdk/h;)V

    goto :goto_2

    .line 146
    :cond_b
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 147
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received Unknown Geofence transition state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "KAHUNA_PUSH_CLICKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {p1, p2}, Lcom/kahuna/sdk/ak;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string/jumbo v1, "KAHUNA_GEOFENCES_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/kahuna/sdk/KahunaCoreReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in CoreReceiver.onReceive(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kahuna/sdk/location/c;->a(Lcom/kahuna/sdk/h;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
