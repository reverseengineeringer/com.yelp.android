.class public final enum Lcom/yelp/android/serializable/User$Gender;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/User$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/User$Gender;

.field public static final enum FEMALE:Lcom/yelp/android/serializable/User$Gender;

.field public static final enum MALE:Lcom/yelp/android/serializable/User$Gender;


# instance fields
.field public final secondPersonPronounSubjectOfVerb:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    new-instance v0, Lcom/yelp/android/serializable/User$Gender;

    const-string/jumbo v1, "MALE"

    const v2, 0x7f070533

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/User$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    .line 230
    new-instance v0, Lcom/yelp/android/serializable/User$Gender;

    const-string/jumbo v1, "FEMALE"

    const v2, 0x7f070532

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/User$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/User$Gender;->FEMALE:Lcom/yelp/android/serializable/User$Gender;

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/serializable/User$Gender;

    sget-object v1, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/User$Gender;->FEMALE:Lcom/yelp/android/serializable/User$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/serializable/User$Gender;->$VALUES:[Lcom/yelp/android/serializable/User$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lcom/yelp/android/serializable/User$Gender;->secondPersonPronounSubjectOfVerb:I

    .line 235
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/User$Gender;
    .locals 1

    .prologue
    .line 228
    const-class v0, Lcom/yelp/android/serializable/User$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User$Gender;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/User$Gender;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/yelp/android/serializable/User$Gender;->$VALUES:[Lcom/yelp/android/serializable/User$Gender;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/User$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/User$Gender;

    return-object v0
.end method
