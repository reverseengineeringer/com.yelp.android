.class public Lcom/yelp/android/ui/activities/deals/be;
.super Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;
.source "UserQuantityView.java"


# instance fields
.field private final b:Lcom/yelp/android/serializable/GiftRecipient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const v1, 0x7f010151

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/deals/be;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f010150

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/deals/be;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;I)V

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 29
    invoke-direct {p0, p1, v1, p3}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/be;->b:Lcom/yelp/android/serializable/GiftRecipient;

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/be;->b:Lcom/yelp/android/serializable/GiftRecipient;

    if-nez v0, :cond_0

    .line 32
    const v0, 0x7f070292

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/be;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/yelp/android/b;->DealQuantityBaseView:[I

    invoke-virtual {p1, v1, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/be;->b:Lcom/yelp/android/serializable/GiftRecipient;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/GiftRecipient;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/be;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public getRecipient()Lcom/yelp/android/serializable/GiftRecipient;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/be;->b:Lcom/yelp/android/serializable/GiftRecipient;

    return-object v0
.end method
