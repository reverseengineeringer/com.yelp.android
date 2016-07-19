.class final enum Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;
.super Ljava/lang/Enum;
.source "ActivityContextualLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

.field public static final enum ADD_PHOTO:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

.field public static final enum BOOKMARK:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

.field public static final enum CHECK_IN:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

.field public static final enum REVIEW:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    const-string/jumbo v1, "REVIEW"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->REVIEW:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    .line 39
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    const-string/jumbo v1, "CHECK_IN"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->CHECK_IN:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    .line 40
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    const-string/jumbo v1, "ADD_PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->ADD_PHOTO:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    const-string/jumbo v1, "BOOKMARK"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->BOOKMARK:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->REVIEW:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->CHECK_IN:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->ADD_PHOTO:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->BOOKMARK:Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->$VALUES:[Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/reviews/ActivityContextualLogin$EventType;

    return-object v0
.end method
