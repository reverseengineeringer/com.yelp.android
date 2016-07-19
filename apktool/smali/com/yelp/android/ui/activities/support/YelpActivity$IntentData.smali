.class public final enum Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;
.super Ljava/lang/Enum;
.source "YelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/YelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

.field public static final enum INSTANCE:Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;


# instance fields
.field private mData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->INSTANCE:Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    sget-object v1, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->INSTANCE:Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->$VALUES:[Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static popData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->INSTANCE:Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->mData:Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->INSTANCE:Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->mData:Ljava/lang/Object;

    .line 175
    return-object v0
.end method

.method public static setData(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->INSTANCE:Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    iput-object p0, v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->mData:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->$VALUES:[Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;

    return-object v0
.end method
