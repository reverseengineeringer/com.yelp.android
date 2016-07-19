.class public final enum Lcom/yelp/android/serializable/FeatureSet$Feature;
.super Ljava/lang/Enum;
.source "FeatureSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/FeatureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/FeatureSet$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/FeatureSet$Feature;

.field public static final enum ADD_FRIEND:Lcom/yelp/android/serializable/FeatureSet$Feature;

.field public static final enum SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

.field public static final enum SEND_MESSAGE:Lcom/yelp/android/serializable/FeatureSet$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet$Feature;

    const-string/jumbo v1, "SEND_COMPLIMENT"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    .line 27
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet$Feature;

    const-string/jumbo v1, "ADD_FRIEND"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->ADD_FRIEND:Lcom/yelp/android/serializable/FeatureSet$Feature;

    .line 28
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet$Feature;

    const-string/jumbo v1, "SEND_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/FeatureSet$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_MESSAGE:Lcom/yelp/android/serializable/FeatureSet$Feature;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/FeatureSet$Feature;

    sget-object v1, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/FeatureSet$Feature;->ADD_FRIEND:Lcom/yelp/android/serializable/FeatureSet$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_MESSAGE:Lcom/yelp/android/serializable/FeatureSet$Feature;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->$VALUES:[Lcom/yelp/android/serializable/FeatureSet$Feature;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/FeatureSet$Feature;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet$Feature;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/FeatureSet$Feature;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->$VALUES:[Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/FeatureSet$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/FeatureSet$Feature;

    return-object v0
.end method
