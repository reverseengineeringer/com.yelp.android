.class public final enum Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;
.super Ljava/lang/Enum;
.source "VideoUploadJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

.field public static final enum CLIENT_TRIM:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

.field public static final enum MARK_UPLOAD_COMPLETE:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

.field public static final enum UPLOAD_TO_S3:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

.field public static final enum UPLOAD_URL:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    const-string/jumbo v1, "UPLOAD_URL"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_URL:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    new-instance v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    const-string/jumbo v1, "UPLOAD_TO_S3"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_TO_S3:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    new-instance v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    const-string/jumbo v1, "MARK_UPLOAD_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->MARK_UPLOAD_COMPLETE:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    new-instance v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    const-string/jumbo v1, "CLIENT_TRIM"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->CLIENT_TRIM:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_URL:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_TO_S3:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->MARK_UPLOAD_COMPLETE:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->CLIENT_TRIM:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->$VALUES:[Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->$VALUES:[Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    invoke-virtual {v0}, [Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
