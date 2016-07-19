.class public Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;
.super Landroid/widget/LinearLayout;
.source "UserEnterAddressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;,
        Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->setOrientation(I)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030160

    invoke-static {v0, v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    const v0, 0x7f0f0491

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->setVisibility(I)V

    .line 114
    const v0, 0x7f0f0492

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a:Landroid/widget/EditText;

    .line 115
    const v0, 0x7f0f0493

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->b:Landroid/widget/EditText;

    .line 116
    const v0, 0x7f0f0494

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->c:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0f0495

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->d:Landroid/widget/ImageView;

    .line 118
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->c:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    return-void
.end method

.method public getAddress()Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070498

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07049b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v3, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-direct {v3, v0, v1, v2}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public setAddress(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformDeliveryAddress;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public setListenerForGeolocateButton(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
