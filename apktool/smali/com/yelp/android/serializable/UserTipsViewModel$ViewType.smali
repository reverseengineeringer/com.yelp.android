.class public final enum Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;
.super Ljava/lang/Enum;
.source "UserTipsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/UserTipsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

.field public static final enum FIRSTS:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

.field public static final enum NORMAL:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

.field public static final enum TIPS_OF_THE_DAY:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;


# instance fields
.field public final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    const-string/jumbo v1, "NORMAL"

    const v2, 0x7f0705f0

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->NORMAL:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    .line 20
    new-instance v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    const-string/jumbo v1, "FIRSTS"

    const v2, 0x7f0702dd

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->FIRSTS:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    .line 21
    new-instance v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    const-string/jumbo v1, "TIPS_OF_THE_DAY"

    const v2, 0x7f0705ea

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->TIPS_OF_THE_DAY:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    sget-object v1, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->NORMAL:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->FIRSTS:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->TIPS_OF_THE_DAY:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->$VALUES:[Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->title:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->$VALUES:[Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    return-object v0
.end method
