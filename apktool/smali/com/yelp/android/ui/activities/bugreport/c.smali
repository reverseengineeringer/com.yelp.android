.class Lcom/yelp/android/ui/activities/bugreport/c;
.super Ljava/lang/Object;
.source "ReportABugFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bugreport/c;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/c;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 198
    return-void
.end method
