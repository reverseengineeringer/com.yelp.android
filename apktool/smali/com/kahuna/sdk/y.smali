.class public Lcom/kahuna/sdk/y;
.super Ljava/lang/Object;
.source "PushNotificationsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/y$a;
    }
.end annotation


# static fields
.field private static a:Lcom/kahuna/sdk/y;

.field private static c:Z


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
    .line 54
    new-instance v0, Lcom/kahuna/sdk/y;

    invoke-direct {v0}, Lcom/kahuna/sdk/y;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kahuna/sdk/y;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/y;->b(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    const-string/jumbo v1, "KAHUNA_TRACKING_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kahuna/sdk/l;->b(Ljava/lang/String;)V

    .line 258
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kahuna/sdk/l;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 261
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    :cond_1
    sget-object v1, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    iget-object v1, v1, Lcom/kahuna/sdk/y;->b:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 268
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    iget-object v2, v2, Lcom/kahuna/sdk/y;->b:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    const-string/jumbo v2, "com.kahuna.sdk.push.clicked"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v2, "KAHUNA_LANDING_EXTRAS_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_2

    .line 272
    const-string/jumbo v2, "landing_extras_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 274
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    :cond_3
    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v1, Lcom/kahuna/sdk/x;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/x;-><init>(Landroid/content/Context;)V

    .line 130
    :try_start_0
    const-string/jumbo v0, "alert"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/x;->a(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "k"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/x;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    :goto_1
    :try_start_1
    const-string/jumbo v0, "nid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const-string/jumbo v0, "nid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 146
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/x;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 162
    :cond_2
    :goto_2
    const-string/jumbo v0, "k"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    const-string/jumbo v0, "k"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 164
    :cond_3
    const-string/jumbo v0, "nid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    const-string/jumbo v0, "nid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 166
    :cond_4
    const-string/jumbo v0, "collapse_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    const-string/jumbo v0, "collapse_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 168
    :cond_5
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 171
    :cond_6
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_7

    .line 172
    const-string/jumbo v0, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Kahuna Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_7
    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "k_internal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    const-string/jumbo v0, "k_internal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :try_start_2
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 183
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "gid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 186
    sget-object v3, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    invoke-direct {v3, p0, v0}, Lcom/kahuna/sdk/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 187
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_0

    .line 188
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received another push with displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " within the cooldown period. Ignoring push."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_8

    .line 207
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caught JSON Exception trying to parse Kahuna internal payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_8
    :goto_3
    const-string/jumbo v0, "k_internal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 211
    :cond_9
    invoke-virtual {v1, p1}, Lcom/kahuna/sdk/x;->a(Landroid/os/Bundle;)V

    .line 214
    sget-object v0, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    iget-object v0, v0, Lcom/kahuna/sdk/y;->b:Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 215
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    iget-object v2, v2, Lcom/kahuna/sdk/y;->b:Ljava/lang/Class;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    const-string/jumbo v2, "com.kahuna.sdk.push.received"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v2, "alert"

    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 219
    const-string/jumbo v2, "k_bg_img_url"

    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_a
    if-eqz p1, :cond_b

    .line 222
    const-string/jumbo v2, "landing_extras_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 224
    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    :cond_c
    :try_start_3
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l;->q()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/kahuna/sdk/l;->r()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 229
    :cond_d
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Hiding Kahuna Push notification because user is generating notification separately."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "KahunaSDK wasn\'t initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 133
    :catch_2
    move-exception v0

    .line 134
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_e

    .line 135
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception reading message from Push Notification Manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_e
    invoke-virtual {v1, v5}, Lcom/kahuna/sdk/x;->a(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v5}, Lcom/kahuna/sdk/x;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :cond_f
    :try_start_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/x;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 153
    :catch_3
    move-exception v0

    .line 154
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_10

    .line 155
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception reading push message notification id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_10
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/x;->a(I)V

    goto/16 :goto_2

    .line 193
    :cond_11
    :try_start_5
    const-string/jumbo v3, "ex_offset"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 194
    sget-object v3, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/kahuna/sdk/y;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 199
    :cond_12
    const-string/jumbo v0, "k_bg_img_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 201
    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/x;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 235
    :cond_13
    :try_start_6
    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 236
    new-instance v0, Lcom/kahuna/sdk/y$a;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/y$a;-><init>(Lcom/kahuna/sdk/x;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/kahuna/sdk/x;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/y$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 239
    :cond_14
    invoke-static {v1}, Lcom/kahuna/sdk/y;->b(Lcom/kahuna/sdk/x;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 106
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-lez v2, :cond_1

    .line 107
    add-long/2addr v0, p3

    .line 113
    :goto_0
    invoke-static {p1}, Lcom/kahuna/sdk/s;->l(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v2, p1}, Lcom/kahuna/sdk/s;->d(Ljava/util/Map;Landroid/content/Context;)V

    .line 117
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_0

    .line 118
    const-string/jumbo v2, "Kahuna"

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

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    .line 110
    :cond_1
    const-wide/32 v2, 0xa8c0

    add-long/2addr v0, v2

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/x;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/kahuna/sdk/y;->b(Lcom/kahuna/sdk/x;)V

    return-void
.end method

.method protected static a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/kahuna/sdk/y;->a:Lcom/kahuna/sdk/y;

    iput-object p0, v0, Lcom/kahuna/sdk/y;->b:Ljava/lang/Class;

    .line 69
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 97
    invoke-static {p1}, Lcom/kahuna/sdk/s;->l(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 98
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

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 83
    invoke-static {p1}, Lcom/kahuna/sdk/s;->l(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 84
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 86
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

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_1
    :try_start_1
    invoke-static {v4, p1}, Lcom/kahuna/sdk/s;->d(Ljava/util/Map;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-void
.end method

.method private static b(Lcom/kahuna/sdk/x;)V
    .locals 9

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->a()Landroid/content/Context;

    move-result-object v5

    .line 280
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 282
    const-string/jumbo v0, ""

    .line 284
    :try_start_0
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 292
    :goto_0
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 293
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 294
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kahuna/sdk/l;->n()I

    move-result v2

    if-lez v2, :cond_a

    .line 295
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l;->n()I

    move-result v0

    move v2, v0

    .line 297
    :goto_1
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l;->o()I

    move-result v0

    if-lez v0, :cond_9

    .line 298
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l;->o()I

    move-result v0

    move v4, v0

    .line 302
    :goto_2
    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_3

    .line 304
    :cond_0
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_1

    .line 305
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Recieved push, but app has no icon or app name label, NOT showing notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 370
    :cond_1
    :goto_3
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_2

    .line 288
    const-string/jumbo v1, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception trying to retrieve Application label:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_0

    .line 310
    :cond_3
    const/16 v0, 0x7ac

    .line 311
    const/4 v6, 0x5

    .line 312
    :try_start_2
    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->d()I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_8

    .line 313
    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->d()I

    move-result v0

    move v3, v0

    .line 318
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/kahuna/sdk/KahunaCoreReceiver;

    invoke-direct {v0, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string/jumbo v7, "KAHUNA_PUSH_CLICKED"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 321
    const-string/jumbo v7, "KAHUNA_TRACKING_ID"

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_4
    const-string/jumbo v7, "KAHUNA_NID"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->g()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 324
    const-string/jumbo v7, "KAHUNA_LANDING_EXTRAS_ID"

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->g()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    :cond_5
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v5, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 327
    const-string/jumbo v0, "notification"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    :try_start_3
    new-instance v8, Landroid/support/v4/app/x$d;

    invoke-direct {v8, v5}, Landroid/support/v4/app/x$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Landroid/support/v4/app/x$d;->a(I)Landroid/support/v4/app/x$d;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/x$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/x$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/x$d;->c(I)Landroid/support/v4/app/x$d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/x$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v1

    .line 338
    sget-boolean v4, Lcom/kahuna/sdk/y;->c:Z

    if-nez v4, :cond_6

    if-lez v2, :cond_6

    .line 339
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x$d;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/x$d;

    .line 342
    :cond_6
    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 343
    new-instance v2, Landroid/support/v4/app/x$b;

    invoke-direct {v2}, Landroid/support/v4/app/x$b;-><init>()V

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->f()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/x$b;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/x$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/x$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x$d;->a(Landroid/support/v4/app/x$p;)Landroid/support/v4/app/x$d;

    .line 356
    :goto_5
    invoke-virtual {v1, v7}, Landroid/support/v4/app/x$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/x$d;

    .line 357
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x$d;->a(Z)Landroid/support/v4/app/x$d;

    .line 358
    invoke-virtual {v1}, Landroid/support/v4/app/x$d;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 360
    :catch_1
    move-exception v0

    .line 361
    :try_start_4
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to render Kahuna Push notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 366
    :catch_2
    move-exception v0

    .line 367
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_1

    .line 368
    const-string/jumbo v1, "Kahuna"

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

    goto/16 :goto_3

    .line 353
    :cond_7
    :try_start_5
    new-instance v2, Landroid/support/v4/app/x$c;

    invoke-direct {v2}, Landroid/support/v4/app/x$c;-><init>()V

    invoke-virtual {p0}, Lcom/kahuna/sdk/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/x$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/x$d;->a(Landroid/support/v4/app/x$p;)Landroid/support/v4/app/x$d;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :cond_8
    move v3, v0

    goto/16 :goto_4

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v2, v0

    goto/16 :goto_1
.end method
