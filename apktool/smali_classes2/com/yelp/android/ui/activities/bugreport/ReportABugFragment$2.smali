.class Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$2;
.super Ljava/lang/Object;
.source "ReportABugFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$2;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$2;->a:Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V

    .line 201
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method
