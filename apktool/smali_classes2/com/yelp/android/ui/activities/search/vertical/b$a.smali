.class Lcom/yelp/android/ui/activities/search/vertical/b$a;
.super Ljava/lang/Object;
.source "UserDeliveryAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/CheckBox;

.field public final b:Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const v0, 0x7f0f00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/b$a;->a:Landroid/widget/CheckBox;

    .line 85
    const v0, 0x7f0f05ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/b$a;->b:Lcom/yelp/android/ui/activities/search/vertical/UserAddressView;

    .line 86
    return-void
.end method
