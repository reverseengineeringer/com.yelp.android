.class Lcom/yelp/android/ui/activities/events/a$a;
.super Ljava/lang/Object;
.source "EventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const v0, 0x7f0f0396

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 213
    const v0, 0x7f0f0397

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->b:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0f0399

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->c:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0f0499

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->d:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0f0543

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->e:Landroid/widget/TextView;

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/events/a$1;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/a$a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/a$a;)Lcom/yelp/android/ui/widgets/RoundedImageView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/events/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/a$a;->e:Landroid/widget/TextView;

    return-object v0
.end method
