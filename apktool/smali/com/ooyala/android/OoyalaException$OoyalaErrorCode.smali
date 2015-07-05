.class public final enum Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;
.super Ljava/lang/Enum;
.source "OoyalaException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_AUTHORIZATION_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_AUTHORIZATION_SIGNATURE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_CONTENT_TREE_NEXT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_INTERNAL_ANDROID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_METADATA_FETCH_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

.field public static final enum ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_AUTHORIZATION_INVALID"

    invoke-direct {v0, v1, v3}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 10
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_CONTENT_TREE_INVALID"

    invoke-direct {v0, v1, v4}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 12
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_AUTHORIZATION_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 14
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_AUTHORIZATION_SIGNATURE_INVALID"

    invoke-direct {v0, v1, v6}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_SIGNATURE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 16
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_CONTENT_TREE_NEXT_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_NEXT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 18
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_INTERNAL_ANDROID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_INTERNAL_ANDROID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 20
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_PLAYBACK_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 22
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_AUTHORIZATION_HEARTBEAT_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 24
    new-instance v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v1, "ERROR_METADATA_FETCH_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_METADATA_FETCH_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_SIGNATURE_INVALID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_CONTENT_TREE_NEXT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_INTERNAL_ANDROID:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_METADATA_FETCH_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->$VALUES:[Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->$VALUES:[Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    invoke-virtual {v0}, [Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    return-object v0
.end method
