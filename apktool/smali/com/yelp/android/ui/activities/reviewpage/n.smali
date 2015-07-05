.class Lcom/yelp/android/ui/activities/reviewpage/n;
.super Ljava/lang/Object;
.source "ActivityReviewPager.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

.field private final b:Ljava/util/Locale;

.field private final c:Ljava/util/Locale;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;ILjava/util/Locale;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/n;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput p2, p0, Lcom/yelp/android/ui/activities/reviewpage/n;->d:I

    .line 601
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/n;->b:Ljava/util/Locale;

    .line 602
    iput-object p4, p0, Lcom/yelp/android/ui/activities/reviewpage/n;->c:Ljava/util/Locale;

    .line 603
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/n;->d:I

    return v0
.end method

.method public b()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/n;->b:Ljava/util/Locale;

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/n;->c:Ljava/util/Locale;

    return-object v0
.end method
