.class Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;
.super Ljava/lang/Object;
.source "ActivityClaimGuestAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/widget/EditText;

.field private final c:Landroid/widget/EditText;

.field private final d:Landroid/widget/EditText;

.field private final e:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

.field private final f:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

.field private final g:Lcom/yelp/android/ui/widgets/FloatLabelLayout;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const v0, 0x7f0f0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->a:Landroid/widget/EditText;

    .line 181
    const v0, 0x7f0f0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->e:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    .line 184
    const v0, 0x7f0f0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->b:Landroid/widget/EditText;

    .line 185
    const v0, 0x7f0f0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->f:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    .line 188
    const v0, 0x7f0f013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->c:Landroid/widget/EditText;

    .line 189
    const v0, 0x7f0f0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->g:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    .line 190
    const v0, 0x7f0f013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->d:Landroid/widget/EditText;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$1;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Lcom/yelp/android/ui/widgets/FloatLabelLayout;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->e:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Lcom/yelp/android/ui/widgets/FloatLabelLayout;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->f:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Lcom/yelp/android/ui/widgets/FloatLabelLayout;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->g:Lcom/yelp/android/ui/widgets/FloatLabelLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/ActivityClaimGuestAccount$a;->b:Landroid/widget/EditText;

    return-object v0
.end method
