.class final enum Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;
.super Ljava/lang/Enum;
.source "WriteTip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/tips/WriteTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TipAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

.field public static final enum EDIT:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

.field public static final enum NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    const-string/jumbo v1, "EDIT"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->EDIT:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    .line 105
    new-instance v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    sget-object v1, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->EDIT:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->NEW:Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->$VALUES:[Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->$VALUES:[Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    return-object v0
.end method
