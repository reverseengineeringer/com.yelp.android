.class public final enum Lcom/yelp/android/services/PhotoUploadService$EntityType;
.super Ljava/lang/Enum;
.source "PhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/services/PhotoUploadService$EntityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/services/PhotoUploadService$EntityType;

.field public static final enum HumanFemale:Lcom/yelp/android/services/PhotoUploadService$EntityType;

.field public static final enum HumanMale:Lcom/yelp/android/services/PhotoUploadService$EntityType;

.field public static final enum Place:Lcom/yelp/android/services/PhotoUploadService$EntityType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;

    const-string/jumbo v1, "HumanMale"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/services/PhotoUploadService$EntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;->HumanMale:Lcom/yelp/android/services/PhotoUploadService$EntityType;

    .line 68
    new-instance v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;

    const-string/jumbo v1, "HumanFemale"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/services/PhotoUploadService$EntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;->HumanFemale:Lcom/yelp/android/services/PhotoUploadService$EntityType;

    .line 69
    new-instance v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;

    const-string/jumbo v1, "Place"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/services/PhotoUploadService$EntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;->Place:Lcom/yelp/android/services/PhotoUploadService$EntityType;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/services/PhotoUploadService$EntityType;

    sget-object v1, Lcom/yelp/android/services/PhotoUploadService$EntityType;->HumanMale:Lcom/yelp/android/services/PhotoUploadService$EntityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/services/PhotoUploadService$EntityType;->HumanFemale:Lcom/yelp/android/services/PhotoUploadService$EntityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/services/PhotoUploadService$EntityType;->Place:Lcom/yelp/android/services/PhotoUploadService$EntityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;->$VALUES:[Lcom/yelp/android/services/PhotoUploadService$EntityType;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/services/PhotoUploadService$EntityType;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/services/PhotoUploadService$EntityType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/yelp/android/services/PhotoUploadService$EntityType;->$VALUES:[Lcom/yelp/android/services/PhotoUploadService$EntityType;

    invoke-virtual {v0}, [Lcom/yelp/android/services/PhotoUploadService$EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/services/PhotoUploadService$EntityType;

    return-object v0
.end method
