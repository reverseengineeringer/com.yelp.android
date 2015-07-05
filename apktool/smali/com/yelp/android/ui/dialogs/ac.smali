.class Lcom/yelp/android/ui/dialogs/ac;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ac;->a:Landroid/widget/TextView;

    .line 197
    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/ac;->b:Landroid/widget/ToggleButton;

    .line 198
    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/ac;->c:Landroid/widget/Button;

    .line 199
    iput-object p4, p0, Lcom/yelp/android/ui/dialogs/ac;->d:Landroid/view/View;

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ac;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/ac;)Landroid/view/View;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ac;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ac;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ac;->a:Landroid/widget/TextView;

    return-object v0
.end method
