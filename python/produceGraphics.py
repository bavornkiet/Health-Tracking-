#used for producing the graphs
import matplotlib.pyplot as plt

#currently just a proof of concept of saving an image file to the correct direction


output_dir = ('output/')

def save_line_graph(values, axis_title_x, axis_title_y, graph_title, filename):
    '''
    Saves a line graph to a specified output file. The x values will just be 1 to
    whatever the length of the array of y values are
    :param values: Array of values to plot on y axis
    :param axis_title_x: String title of the x axis
    :param axis_title_y: String title of the y axis
    :param graph_title: String title of the graph
    :param filename: String, name of file to save to
    :return: true if successful, false otherwise
    '''
    x = list(range(1, len(values)+1))
    y = values
    fig, ax = plt.subplots()
    ax.plot(x, y)
    ax.set_title(graph_title)
    ax.set_xlabel(axis_title_x)
    ax.set_ylabel(axis_title_y)
    plt.savefig(filename)

save_line_graph([2,3,4,5,7], "days since 5 days ago", "steps taken", "steps taken each day", output_dir+"output.png")
