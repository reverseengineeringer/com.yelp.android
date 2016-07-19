.class abstract Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$e;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 4782
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$e;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    .line 4783
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 4784
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$e;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 4789
    return-void
.end method
