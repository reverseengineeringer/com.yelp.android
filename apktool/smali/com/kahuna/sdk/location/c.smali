.class public Lcom/kahuna/sdk/location/c;
.super Ljava/lang/Object;
.source "KahunaActivityRecognitionManager.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static final i:Lcom/kahuna/sdk/location/c;


# instance fields
.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/kahuna/sdk/location/b;

.field private f:Lcom/kahuna/sdk/location/a;

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/location/c;->a:Ljava/util/List;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/kahuna/sdk/location/c;->b:I

    .line 51
    new-instance v0, Lcom/kahuna/sdk/location/c;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/c;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/c;->c:Z

    .line 48
    iput-boolean v0, p0, Lcom/kahuna/sdk/location/c;->g:Z

    .line 49
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/kahuna/sdk/location/c;->h:I

    .line 55
    return-void
.end method

.method protected static a(I)V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iput p0, v0, Lcom/kahuna/sdk/location/c;->h:I

    .line 92
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget v0, v0, Lcom/kahuna/sdk/location/c;->h:I

    if-gez v0, :cond_0

    .line 93
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    const/16 v1, 0x3a98

    iput v1, v0, Lcom/kahuna/sdk/location/c;->h:I

    .line 96
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 193
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v1

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    .line 203
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    sget v1, Lcom/kahuna/sdk/location/c;->b:I

    if-eq v1, v0, :cond_1

    .line 204
    sput v0, Lcom/kahuna/sdk/location/c;->b:I

    .line 206
    sget-object v1, Lcom/kahuna/sdk/location/c;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got supported Activity type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/kahuna/sdk/location/c;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b()V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got unsupported Activity type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/kahuna/sdk/location/c;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->c()V

    goto :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/l;)V
    .locals 3

    .prologue
    .line 124
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_2

    .line 125
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot use Activity Recognition Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/c;->g:Z

    if-nez v0, :cond_3

    .line 130
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "App doens\'t have required permissions for Activity Monitoring. Aborting request for updates!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_3
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/c;->c:Z

    if-nez v0, :cond_1

    .line 141
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/c;->d()V

    .line 142
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-object v0, v0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/b;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_4
    :goto_1
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kahuna/sdk/location/c;->c:Z

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "Caught error when attempting to request for ActivityMonitoring Updates."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string/jumbo v1, "Kahuna"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/c;->g:Z

    return v0
.end method

.method protected static b()I
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget v0, v0, Lcom/kahuna/sdk/location/c;->h:I

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    packed-switch p0, :pswitch_data_0

    .line 259
    :pswitch_0
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 250
    :pswitch_1
    const-string/jumbo v0, "running"

    goto :goto_0

    .line 252
    :pswitch_2
    const-string/jumbo v0, "walking"

    goto :goto_0

    .line 254
    :pswitch_3
    const-string/jumbo v0, "on foot"

    goto :goto_0

    .line 256
    :pswitch_4
    const-string/jumbo v0, "standing"

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/kahuna/sdk/l;)V
    .locals 3

    .prologue
    .line 154
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_2

    .line 155
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot use Activity Recognition Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/c;->g:Z

    if-nez v0, :cond_3

    .line 160
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "App doens\'t have required permissions for Activity Monitoring. Aborting request for removal of updates!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_3
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/c;->c:Z

    if-eqz v0, :cond_1

    .line 171
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->c()V

    .line 173
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/c;->d()V

    .line 174
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-object v0, v0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/b;->a()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 175
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-object v0, v0, Lcom/kahuna/sdk/location/c;->f:Lcom/kahuna/sdk/location/a;

    sget-object v1, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-object v1, v1, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/b;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/location/a;->a(Landroid/app/PendingIntent;)V

    .line 176
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-object v0, v0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/b;->a()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 179
    :cond_4
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    .line 180
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kahuna/sdk/location/c;->f:Lcom/kahuna/sdk/location/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_5
    :goto_1
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kahuna/sdk/location/c;->c:Z

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "Caught error when attempting to remove ActivityMonitoring Updates."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string/jumbo v1, "Kahuna"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected static c()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-object v0, v0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/kahuna/sdk/location/c;->i:Lcom/kahuna/sdk/location/c;

    iget-object v0, v0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/b;->b()V

    .line 112
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/kahuna/sdk/location/b;

    iget-object v1, p0, Lcom/kahuna/sdk/location/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/location/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/c;->e:Lcom/kahuna/sdk/location/b;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/location/c;->f:Lcom/kahuna/sdk/location/a;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/kahuna/sdk/location/a;

    iget-object v1, p0, Lcom/kahuna/sdk/location/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/location/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/c;->f:Lcom/kahuna/sdk/location/a;

    .line 121
    :cond_1
    return-void
.end method
