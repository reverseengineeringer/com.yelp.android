.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Ljava/lang/Object;


# static fields
.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final Iu:Lcom/google/android/gms/common/ConnectionResult;

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe


# instance fields
.field private final Iv:I

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->Iu:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->Iv:I

    iput-object p2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private gt()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->Iv:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->Iv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "SERVICE_MISSING"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "SERVICE_INVALID"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "CANCELED"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "TIMEOUT"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "INTERRUPTED"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->Iv:I

    return v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasResolution()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->Iv:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->Iv:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/jv;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/jv$a;

    move-result-object v0

    const-string/jumbo v1, "statusCode"

    invoke-direct {p0}, Lcom/google/android/gms/common/ConnectionResult;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jv$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/jv$a;

    move-result-object v0

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jv$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/jv$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jv$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
