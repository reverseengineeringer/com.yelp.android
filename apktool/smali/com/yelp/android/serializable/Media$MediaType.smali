.class public final enum Lcom/yelp/android/serializable/Media$MediaType;
.super Ljava/lang/Enum;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Media$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Media$MediaType;

.field public static final enum AD:Lcom/yelp/android/serializable/Media$MediaType;

.field public static final enum LOADING:Lcom/yelp/android/serializable/Media$MediaType;

.field public static final enum PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

.field public static final enum VIDEO:Lcom/yelp/android/serializable/Media$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/yelp/android/serializable/Media$MediaType;

    const-string/jumbo v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Media$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    .line 35
    new-instance v0, Lcom/yelp/android/serializable/Media$MediaType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/Media$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    .line 36
    new-instance v0, Lcom/yelp/android/serializable/Media$MediaType;

    const-string/jumbo v1, "AD"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/Media$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Media$MediaType;->AD:Lcom/yelp/android/serializable/Media$MediaType;

    .line 37
    new-instance v0, Lcom/yelp/android/serializable/Media$MediaType;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/Media$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Media$MediaType;->LOADING:Lcom/yelp/android/serializable/Media$MediaType;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/serializable/Media$MediaType;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->AD:Lcom/yelp/android/serializable/Media$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->LOADING:Lcom/yelp/android/serializable/Media$MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/Media$MediaType;->$VALUES:[Lcom/yelp/android/serializable/Media$MediaType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Media$MediaType;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/yelp/android/serializable/Media$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Media$MediaType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->$VALUES:[Lcom/yelp/android/serializable/Media$MediaType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Media$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Media$MediaType;

    return-object v0
.end method
