.class final enum Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;
.super Ljava/lang/Enum;
.source "UserPhotoUploadController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

.field public static final enum DO_NOTHING:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

.field public static final enum SHOW_ERROR:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

.field public static final enum SHOW_IN_PROGRESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

.field public static final enum SHOW_SUCCESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    const-string/jumbo v1, "SHOW_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_SUCCESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 22
    new-instance v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    const-string/jumbo v1, "SHOW_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_ERROR:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 24
    new-instance v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    const-string/jumbo v1, "SHOW_IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_IN_PROGRESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 26
    new-instance v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    const-string/jumbo v1, "DO_NOTHING"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->DO_NOTHING:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    sget-object v1, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_SUCCESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_ERROR:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->SHOW_IN_PROGRESS:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->DO_NOTHING:Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->$VALUES:[Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->$VALUES:[Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/controllers/UserPhotoUploadController$CallbackStatus;

    return-object v0
.end method
