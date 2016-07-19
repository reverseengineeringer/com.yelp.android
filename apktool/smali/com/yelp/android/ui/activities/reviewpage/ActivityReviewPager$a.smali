.class Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;
.super Ljava/lang/Object;
.source "ActivityReviewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

.field private final b:Ljava/util/Locale;

.field private final c:Ljava/util/Locale;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;ILjava/util/Locale;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput p2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;->d:I

    .line 680
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;->b:Ljava/util/Locale;

    .line 681
    iput-object p4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;->c:Ljava/util/Locale;

    .line 682
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;->d:I

    return v0
.end method

.method public b()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;->b:Ljava/util/Locale;

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;->c:Ljava/util/Locale;

    return-object v0
.end method
