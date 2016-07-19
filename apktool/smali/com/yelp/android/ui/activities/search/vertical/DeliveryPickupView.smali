.class public Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;
.super Landroid/widget/LinearLayout;
.source "DeliveryPickupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/SpannedTextView;

.field private b:Lcom/yelp/android/ui/widgets/SpannedTextView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

.field private e:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->e()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->e()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->e()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->e:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03020b

    invoke-static {v0, v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 151
    const v0, 0x7f0f05da

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a:Lcom/yelp/android/ui/widgets/SpannedTextView;

    .line 152
    const v0, 0x7f0f05db

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b:Lcom/yelp/android/ui/widgets/SpannedTextView;

    .line 153
    const v0, 0x7f0f05dd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    .line 154
    const v0, 0x7f0f05dc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    .line 156
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a:Lcom/yelp/android/ui/widgets/SpannedTextView;

    new-instance v2, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$3;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b:Lcom/yelp/android/ui/widgets/SpannedTextView;

    new-instance v2, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;Landroid/widget/Space;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a:Lcom/yelp/android/ui/widgets/SpannedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setChecked(Z)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09010e

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900e7

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 56
    return-void
.end method

.method protected a(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301b5

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 89
    const v0, 0x7f0f0245

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;->setAddress(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    .line 90
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method protected a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "We can\'t enable the ime search action on the enter address view if the enter address view has not been shown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;)V

    .line 146
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a:Lcom/yelp/android/ui/widgets/SpannedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setChecked(Z)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b:Lcom/yelp/android/ui/widgets/SpannedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900e7

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09010e

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    return-void
.end method

.method protected c()Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 74
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    return-object v0
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301b6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->c:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$2;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method protected getEnteredAddress()Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->d:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->getAddress()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setController(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->e:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;

    .line 129
    return-void
.end method
