.class Lcom/yelp/android/ui/activities/messaging/ad;
.super Ljava/lang/Object;
.source "MessagingActionsHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/r;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ad;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ad;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a()V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ad;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->c(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ad;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ad;->a:Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 157
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationDelete:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 158
    return-void
.end method
