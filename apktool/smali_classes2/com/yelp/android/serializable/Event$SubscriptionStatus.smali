.class public final enum Lcom/yelp/android/serializable/Event$SubscriptionStatus;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Event$SubscriptionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Event$SubscriptionStatus;

.field public static final enum ImIn:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

.field public static final enum SoundsCool:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

.field public static final enum Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;


# instance fields
.field private final mStringResource:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    const-string/jumbo v1, "Unassigned"

    const v2, 0x7f070191

    const-string/jumbo v3, "notinterested"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 48
    new-instance v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    const-string/jumbo v1, "SoundsCool"

    const v2, 0x7f0702b5

    const-string/jumbo v3, "interested"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->SoundsCool:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 49
    new-instance v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    const-string/jumbo v1, "ImIn"

    const v2, 0x7f0702b3

    const-string/jumbo v3, "going"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->ImIn:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    sget-object v1, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->SoundsCool:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->ImIn:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->$VALUES:[Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->mStringResource:I

    .line 56
    iput-object p4, p0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->mValue:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static statusFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$SubscriptionStatus;
    .locals 5

    .prologue
    .line 69
    invoke-static {}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->values()[Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 70
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->getValueString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    :goto_1
    return-object v0

    .line 69
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->Unassigned:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$SubscriptionStatus;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Event$SubscriptionStatus;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->$VALUES:[Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Event$SubscriptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    return-object v0
.end method


# virtual methods
.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->mStringResource:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
