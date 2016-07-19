.class public abstract enum Lcom/yelp/android/ui/activities/compliments/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/compliments/Mode$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/compliments/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/compliments/Mode;

.field public static final enum APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

.field public static final enum DELETE:Lcom/yelp/android/ui/activities/compliments/Mode;

.field public static final enum LIST:Lcom/yelp/android/ui/activities/compliments/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/Mode$1;

    const-string/jumbo v1, "LIST"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/compliments/Mode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/Mode$2;

    const-string/jumbo v1, "APPROVE"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/compliments/Mode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 79
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/Mode$3;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/compliments/Mode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->DELETE:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/compliments/Mode;

    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->DELETE:Lcom/yelp/android/ui/activities/compliments/Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->$VALUES:[Lcom/yelp/android/ui/activities/compliments/Mode;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/compliments/Mode$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/Mode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/compliments/Mode;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/compliments/Mode;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/compliments/Mode;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/ui/activities/compliments/Mode;->$VALUES:[Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/compliments/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/compliments/Mode;

    return-object v0
.end method


# virtual methods
.method public abstract getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I
.end method

.method public abstract makeActionRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;)Lcom/yelp/android/appdata/webrequests/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/as;"
        }
    .end annotation
.end method

.method public abstract makeLookupRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;II)Lcom/yelp/android/appdata/webrequests/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/at$a;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/yelp/android/appdata/webrequests/at;"
        }
    .end annotation
.end method
