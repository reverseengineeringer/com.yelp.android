.class public Lcom/kahuna/sdk/ak;
.super Ljava/lang/Object;
.source "PushNotificationsManager.java"


# static fields
.field private static a:Lcom/kahuna/sdk/ak;


# instance fields
.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kahuna/sdk/ak;

    invoke-direct {v0}, Lcom/kahuna/sdk/ak;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/ak;->b(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    const-string/jumbo v1, "KAHUNA_TRACKING_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    invoke-static {v1}, Lcom/kahuna/sdk/h;->b(Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/h;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 232
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    :cond_1
    sget-object v1, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    iget-object v1, v1, Lcom/kahuna/sdk/ak;->b:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 239
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    iget-object v2, v2, Lcom/kahuna/sdk/ak;->b:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string/jumbo v2, "com.kahuna.sdk.push.clicked"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string/jumbo v2, "KAHUNA_LANDING_EXTRAS_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    .line 243
    const-string/jumbo v2, "landing_extras_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 245
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    :cond_3
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 110
    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    :try_start_0
    const-string/jumbo v0, "alert"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    const-string/jumbo v0, "k"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 132
    :goto_1
    :try_start_1
    const-string/jumbo v0, "nid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 133
    const-string/jumbo v0, "nid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 135
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 154
    :goto_2
    const-string/jumbo v1, "k"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    const-string/jumbo v1, "k"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 156
    :cond_2
    const-string/jumbo v1, "nid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    const-string/jumbo v1, "nid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 158
    :cond_3
    const-string/jumbo v1, "collapse_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    const-string/jumbo v1, "collapse_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 160
    :cond_4
    const-string/jumbo v1, "from"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    const-string/jumbo v1, "from"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 163
    :cond_5
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_6

    .line 164
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Kahuna Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_6
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 171
    const-string/jumbo v1, "k_internal"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 172
    const-string/jumbo v1, "k_internal"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    :try_start_2
    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 175
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "gid"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 178
    sget-object v5, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    invoke-direct {v5, p0, v1}, Lcom/kahuna/sdk/ak;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 179
    sget-boolean v4, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v4, :cond_0

    .line 180
    const-string/jumbo v4, "KahunaAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received another push with displayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " within the cooldown period. Ignoring push."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    sget-boolean v4, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v4, :cond_7

    .line 193
    const-string/jumbo v4, "KahunaAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Caught JSON Exception trying to parse Kahuna internal payload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_7
    :goto_3
    const-string/jumbo v1, "k_internal"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 199
    :cond_8
    sget-object v1, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    iget-object v1, v1, Lcom/kahuna/sdk/ak;->b:Ljava/lang/Class;

    if-eqz v1, :cond_a

    .line 200
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    iget-object v4, v4, Lcom/kahuna/sdk/ak;->b:Ljava/lang/Class;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string/jumbo v4, "com.kahuna.sdk.push.received"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v4, "alert"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    if-eqz p1, :cond_9

    .line 204
    const-string/jumbo v4, "landing_extras_id"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    :cond_9
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    :cond_a
    invoke-static {}, Lcom/kahuna/sdk/h;->l()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/kahuna/sdk/h;->n()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 210
    :cond_b
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 211
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Hiding Kahuna Push notification because user is generating notification separately."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    sget-boolean v3, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v3, :cond_c

    .line 124
    const-string/jumbo v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception reading message from Push Notification Manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v3, v2

    .line 127
    goto/16 :goto_1

    .line 138
    :cond_d
    :try_start_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    goto/16 :goto_2

    :cond_e
    move v0, v1

    .line 142
    goto/16 :goto_2

    .line 145
    :catch_2
    move-exception v0

    .line 146
    sget-boolean v4, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v4, :cond_f

    .line 147
    const-string/jumbo v4, "KahunaAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception reading push message notification id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v0, v1

    .line 148
    goto/16 :goto_2

    .line 185
    :cond_10
    :try_start_4
    const-string/jumbo v5, "ex_offset"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 186
    sget-object v6, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    invoke-direct {v6, p0, v1, v4, v5}, Lcom/kahuna/sdk/ak;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 215
    :cond_11
    invoke-static {p0, v3, v2, v0, p1}, Lcom/kahuna/sdk/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 93
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-lez v2, :cond_1

    .line 94
    add-long/2addr v0, p3

    .line 100
    :goto_0
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->k(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v2, p1}, Lcom/kahuna/sdk/ag;->c(Ljava/util/Map;Landroid/content/Context;)V

    .line 104
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_0

    .line 105
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updated recevied push group id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with expire time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    const-wide/32 v2, 0xa8c0

    add-long/2addr v0, v2

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 252
    const-string/jumbo v0, ""

    .line 254
    :try_start_0
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 262
    :goto_0
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 263
    invoke-static {}, Lcom/kahuna/sdk/h;->j()I

    move-result v4

    if-lez v4, :cond_7

    .line 264
    invoke-static {}, Lcom/kahuna/sdk/h;->j()I

    move-result v0

    move v4, v0

    .line 268
    :goto_1
    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v4, :cond_3

    .line 270
    :cond_0
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 271
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Recieved push, but app has no icon or app name label, NOT showing notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :cond_1
    :goto_2
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_2

    .line 258
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception trying to retrieve Application label:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_0

    .line 276
    :cond_3
    const/16 v0, 0x7ac

    .line 277
    const/4 v5, 0x5

    .line 278
    const/4 v6, -0x1

    if-eq p3, v6, :cond_6

    .line 282
    :goto_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/kahuna/sdk/KahunaCoreReceiver;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string/jumbo v8, "KAHUNA_PUSH_CLICKED"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    if-eqz p2, :cond_4

    .line 288
    const-string/jumbo v8, "KAHUNA_TRACKING_ID"

    invoke-virtual {v0, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :cond_4
    const-string/jumbo v8, "KAHUNA_NID"

    invoke-virtual {v0, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    if-eqz p4, :cond_5

    .line 291
    const-string/jumbo v8, "KAHUNA_LANDING_EXTRAS_ID"

    invoke-virtual {v0, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 293
    :cond_5
    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p0, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 294
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    :try_start_3
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v9, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    new-instance v10, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v10}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v10, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 316
    invoke-virtual {v9, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 317
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 318
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v0, p3, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 325
    :goto_4
    if-nez v2, :cond_1

    .line 326
    :try_start_4
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, v4, p1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 327
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/2addr v3, v5

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 329
    invoke-virtual {v2, p0, v1, p1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 330
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 331
    invoke-virtual {v0, p3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 335
    :catch_1
    move-exception v0

    .line 336
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 337
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught generic exception trying to build push notification:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 320
    :catch_2
    move-exception v2

    .line 321
    :try_start_5
    const-string/jumbo v2, "KahunaAnalytics"

    const-string/jumbo v9, "You should add the support library to your application"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move v2, v3

    .line 322
    goto :goto_4

    :cond_6
    move p3, v0

    goto/16 :goto_3

    :cond_7
    move v4, v0

    goto/16 :goto_1
.end method

.method protected static a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/kahuna/sdk/ak;->a:Lcom/kahuna/sdk/ak;

    iput-object p0, v0, Lcom/kahuna/sdk/ak;->b:Ljava/lang/Class;

    .line 60
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 84
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->k(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 85
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 70
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->k(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 71
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_1
    :try_start_1
    invoke-static {v4, p1}, Lcom/kahuna/sdk/ag;->c(Ljava/util/Map;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit p0

    return-void
.end method
