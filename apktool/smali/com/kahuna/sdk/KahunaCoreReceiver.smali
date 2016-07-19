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
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 169
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    const-string/jumbo v0, "enter"

    goto :goto_0

    .line 166
    :pswitch_1
    const-string/jumbo v0, "exit"

    goto :goto_0

    .line 160
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

    .line 76
    invoke-static {p2}, Lcom/google/android/gms/location/h;->a(Landroid/content/Intent;)Lcom/google/android/gms/location/h;

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "Kahuna"

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

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Geofence Intent processing has an error. Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->c()I

    move-result v2

    .line 94
    if-eq v2, v8, :cond_3

    const/4 v1, 0x2

    if-ne v2, v1, :cond_b

    .line 96
    :cond_3
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_4

    .line 97
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v3, "Recevied Kahuna Geofence update!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/location/h;->d()Ljava/util/List;

    move-result-object v3

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 103
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/f;

    invoke-interface {v0}, Lcom/google/android/gms/location/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 104
    aput-object v0, v4, v1

    .line 106
    sget-boolean v5, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v5, :cond_5

    .line 107
    const-string/jumbo v5, "Kahuna"

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

    .line 111
    :cond_5
    const-string/jumbo v5, "KahunaEngineRegion_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 113
    if-ne v2, v8, :cond_a

    .line 116
    invoke-static {v8}, Lcom/kahuna/sdk/u;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 117
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_6

    .line 118
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "Updated existing regions registered from before 516, ignoring false first enter event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_6
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kahuna/sdk/location/i;->a(Lcom/kahuna/sdk/l;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_7
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v5

    invoke-static {v5}, Lcom/kahuna/sdk/location/i;->c(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v5

    .line 126
    if-eqz v5, :cond_8

    .line 127
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 128
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 129
    const-string/jumbo v1, "Kahuna"

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

    .line 130
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Not tracking geofence enter event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    :cond_8
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/kahuna/sdk/location/i;->a(Lcom/kahuna/sdk/l;Ljava/lang/String;)V

    .line 141
    :goto_2
    const-string/jumbo v5, "KahunaEngineRegion_"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/kahuna/sdk/KahunaCoreReceiver;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/kahuna/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 138
    :cond_a
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v5

    invoke-static {v5}, Lcom/kahuna/sdk/location/i;->d(Lcom/kahuna/sdk/l;)V

    goto :goto_2

    .line 147
    :cond_b
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v0, "Kahuna"

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
    invoke-static {p1, p2}, Lcom/kahuna/sdk/y;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
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
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in CoreReceiver.onReceive(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1, p2}, Lcom/kahuna/sdk/location/c;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
