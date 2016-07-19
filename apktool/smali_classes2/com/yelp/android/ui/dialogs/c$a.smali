.class public Lcom/yelp/android/ui/dialogs/c$a;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/view/ViewStub;

.field protected b:Landroid/widget/ToggleButton;

.field protected c:Landroid/widget/TextView;

.field final synthetic d:Lcom/yelp/android/ui/dialogs/c;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/dialogs/c;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$a;->d:Lcom/yelp/android/ui/dialogs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/c$a;->e:Landroid/view/View;

    .line 237
    const v0, 0x7f0f02fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a;->c:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f0f02fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a;->b:Landroid/widget/ToggleButton;

    .line 239
    const v0, 0x7f0f02fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a;->a:Landroid/view/ViewStub;

    .line 240
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/c$a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/yelp/android/ui/dialogs/c$a$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/dialogs/c$a$1;-><init>(Lcom/yelp/android/ui/dialogs/c$a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
