.class public final Lcom/yelp/android/ui/activities/account/e;
.super Lcom/yelp/android/ui/util/au;
.source "CreditCardSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/PaymentMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/widget/AbsListView$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/yelp/android/ui/activities/account/e;->a:Landroid/widget/AbsListView$LayoutParams;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 223
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/account/e;->a(Ljava/util/List;)V

    .line 224
    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/panels/ButtonWithIcon;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;-><init>(Landroid/content/Context;)V

    .line 249
    sget-object v1, Lcom/yelp/android/ui/activities/account/e;->a:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 228
    if-nez p2, :cond_1

    .line 229
    invoke-static {p3}, Lcom/yelp/android/ui/activities/account/e;->a(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/panels/ButtonWithIcon;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 231
    check-cast v0, Lcom/yelp/android/ui/panels/ButtonWithIcon;

    .line 232
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/account/e;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/PaymentMethod;

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getImageView()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PaymentMethod;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getImageView()Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PaymentMethod;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200e8

    invoke-virtual {v1, v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 242
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PaymentMethod;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-object v0

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
