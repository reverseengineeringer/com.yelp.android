.class public final enum Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;
.super Ljava/lang/Enum;
.source "ActivityCreateAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

.field public static final enum FEMALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

.field public static final enum MALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

.field public static final enum NOT_SPECIFIED:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    const-string/jumbo v1, "NOT_SPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->NOT_SPECIFIED:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    const-string/jumbo v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->MALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    const-string/jumbo v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->FEMALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    .line 224
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->NOT_SPECIFIED:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->MALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->FEMALE:Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

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
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;
    .locals 1

    .prologue
    .line 224
    const-class v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->$VALUES:[Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/ActivityCreateAccount$Gender;

    return-object v0
.end method
