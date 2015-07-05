.class Lcom/yelp/android/ui/activities/businesspage/a;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/a;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/a;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/a;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i()V

    .line 457
    return-void
.end method
