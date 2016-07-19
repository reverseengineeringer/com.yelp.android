.class public Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;
.super Lcom/yelp/android/ui/widgets/AwardBanner;
.source "HotNewBusinessAwardBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/AwardBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$1;-><init>(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;)Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;

    return-object v0
.end method


# virtual methods
.method public setHotAndNewClickListener(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->a:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;

    .line 48
    return-void
.end method
