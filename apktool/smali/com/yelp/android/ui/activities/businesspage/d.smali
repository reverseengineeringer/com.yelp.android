.class Lcom/yelp/android/ui/activities/businesspage/d;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;II)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->d:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput p3, p0, Lcom/yelp/android/ui/activities/businesspage/d;->b:I

    iput p4, p0, Lcom/yelp/android/ui/activities/businesspage/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/d;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget v1, p0, Lcom/yelp/android/ui/activities/businesspage/d;->b:I

    iget v2, p0, Lcom/yelp/android/ui/activities/businesspage/d;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(II)V

    .line 532
    return-void
.end method
